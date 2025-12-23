<?php
session_start();
require_once __DIR__ . '/functions.php';

// Check if user is trying to login
if (isset($_POST['login'])) {
    $username = sanitize($_POST['username']);
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE username = ? AND is_active = 1";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_name'] = $user['name'];
            $_SESSION['user_role'] = $user['role'];
            $_SESSION['user_email'] = $user['email'];
            
            // Update last login
            $update_sql = "UPDATE users SET last_login = NOW() WHERE id = ?";
            $update_stmt = $conn->prepare($update_sql);
            $update_stmt->bind_param("i", $user['id']);
            $update_stmt->execute();
            $update_stmt->close();
            
            logActivity("User logged in");
            //redirect('dashboard.php');
        } else {
            setAlert('danger', 'Invalid username or password');
        }
    } else {
        setAlert('danger', 'Invalid username or password');
    }
    $stmt->close();
}

// Check if user is trying to logout
if (isset($_GET['logout'])) {
    logActivity("User logged out");
    session_destroy();
    redirect('index.php');
}

// Protect pages that require authentication
$protected_pages = ['dashboard.php'];
$current_page = basename($_SERVER['PHP_SELF']);

if (in_array($current_page, $protected_pages) || strpos($_SERVER['REQUEST_URI'], 'modules/') !== false) {
    if (!isLoggedIn()) {
        setAlert('danger', 'Please login to access that page');
        redirect('index.php');
    }
}
?>