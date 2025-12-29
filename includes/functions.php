<?php
require_once __DIR__ . '/../config/database.php';

// Function to sanitize input data
function sanitize($data) {
    global $conn;
    return htmlspecialchars(strip_tags($conn->real_escape_string(trim($data))));
}

// Function to generate random string
function generateRandomString($length = 10) {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

// Function to generate unique ID
function generateUniqueId($prefix = 'ORD') {
    return $prefix . '-' . date('Ymd') . '-' . generateRandomString(6);
}

// Function to check if user is logged in
function isLoggedIn() {
    return isset($_SESSION['user_id']);
}

// Function to check user role
function hasRole($role) {
    if (!isLoggedIn()) return false;
    return $_SESSION['user_role'] === $role;
}

// Function to redirect
function redirect($url) {
    header("Location: $url");
    exit();
}

// Function to display alert messages
function displayAlert() {
    if (isset($_SESSION['alert'])) {
        $alert = $_SESSION['alert'];
        echo '<div class="alert alert-' . $alert['type'] . ' alert-dismissible fade show" role="alert">
                ' . $alert['message'] . '
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>';
        unset($_SESSION['alert']);
    }
}

// Function to set alert message
function setAlert($type, $message) {
    $_SESSION['alert'] = [
        'type' => $type,
        'message' => $message
    ];
}

// Function to log activity
function logActivity($action, $details = null) {
    global $conn;

    $action = trim((string)$action);
    if (strlen($action) > 250) {
        $action = substr($action, 0, 250);
    }

    $detailsPayload = $details !== null
        ? json_encode($details, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES)
        : null;
    $ipAddress = $_SERVER['REMOTE_ADDR'] ?? null;
    $userId = $_SESSION['user_id'] ?? null;

    if ($userId === null) {
        $sql = "INSERT INTO activity_logs (user_id, action, details, ip_address) VALUES (NULL, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $action, $detailsPayload, $ipAddress);
    } else {
        $sql = "INSERT INTO activity_logs (user_id, action, details, ip_address) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("isss", $userId, $action, $detailsPayload, $ipAddress);
    }

    $stmt->execute();
    $stmt->close();
}

// Get status color for badges
function getStatusColor($status) {
    switch ($status) {
        case 'new':
            return 'primary';
        case 'in-production':
            return 'info';
        case 'in-packing':
            return 'warning';
        case 'delivering':
            return 'primary';
        case 'delivered':
            return 'success';
        case 'returned':
        case 'returned-refunded':
            return 'danger';
        case 'partially-returned':
        case 'partially-returned-refunded':
            return 'warning';
        default:
            return 'secondary';
    }
}

// Get product type color for badges
function getProductTypeColor($type) {
    switch ($type) {
        case 'primary':
            return 'primary';
        case 'final':
            return 'success';
        case 'material':
            return 'info';
        default:
            return 'secondary';
    }
}


function getProductById($id) {
    global $conn;
    $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_assoc();
}

function getCategoryById($id) {
    global $conn;
    $stmt = $conn->prepare("SELECT * FROM categories WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_assoc();
}

function getInventoryQuantitiesForProduct($product_id) {
    global $conn;
    $stmt = $conn->prepare("SELECT ip.quantity, i.name as inventory_name, i.location 
                           FROM inventory_products ip 
                           JOIN inventories i ON ip.inventory_id = i.id 
                           WHERE ip.product_id = ?");
    $stmt->bind_param("i", $product_id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_all(MYSQLI_ASSOC);
}

function getProductComponents($product_id) {
    global $conn;
    $stmt = $conn->prepare("SELECT pc.quantity, p.name as component_name 
                           FROM product_components pc 
                           JOIN products p ON pc.component_id = p.id 
                           WHERE pc.final_product_id = ?");
    $stmt->bind_param("i", $product_id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_all(MYSQLI_ASSOC);
}

function formatCurrency($amount) {
    return number_format($amount, 2) . ' EGP';
}

function formatDateTime($datetime) {
    return date('M j, Y g:i A', strtotime($datetime));
}

function hasPermission($requiredRole) {
    if (!isset($_SESSION['user_role'])) {
        return false;
    }
    
    // Admin has all permissions
    if ($_SESSION['user_role'] === 'admin') {
        return true;
    }
    
    // Check if the user's role matches the required role
    return $_SESSION['user_role'] === $requiredRole;
}

function displayMessage() {
    if (isset($_SESSION['message'])) {
        $message = $_SESSION['message'];
        echo '<div class="alert alert-' . $message['type'] . ' alert-dismissible fade show" role="alert">';
        echo $message['text'];
        echo '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
        echo '</div>';
        unset($_SESSION['message']);
    }
}

?>
