<?php
// Start session if not already started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

function getAllUsers() {
    global $conn;
    $sql = "SELECT * FROM users ORDER BY name ASC";
    $result = $conn->query($sql);
    return $result->fetch_all(MYSQLI_ASSOC);
}

function getUserById($id) {
    global $conn;
    $stmt = $conn->prepare("SELECT * FROM users WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_assoc();
}

function createUser($data) {
    global $conn;
    
    // Validate passwords match
    if ($data['password'] !== $data['confirm_password']) {
        return false;
    }
    
    $hashed_password = password_hash($data['password'], PASSWORD_DEFAULT);
    $is_active = isset($data['is_active']) ? 1 : 0;
    
    $stmt = $conn->prepare("INSERT INTO users (username, password, name, email, role, is_active) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssi", 
        $data['username'],
        $hashed_password,
        $data['name'],
        $data['email'],
        $data['role'],
        $is_active
    );
    
    return $stmt->execute();
    
}

function updateUser($id, $data) {
    global $conn;
    
    $is_active = isset($data['is_active']) ? 1 : 0;
    
    // Check if password is being updated
    if (!empty($data['password'])) {
        if ($data['password'] !== $data['confirm_password']) {
            return false;
        }
        $hashed_password = password_hash($data['password'], PASSWORD_DEFAULT);
        
        $stmt = $conn->prepare("UPDATE users SET username = ?, password = ?, name = ?, email = ?, role = ?, is_active = ? WHERE id = ?");
        $stmt->bind_param("sssssii", 
            $data['username'],
            $hashed_password,
            $data['name'],
            $data['email'],
            $data['role'],
            $is_active,
            $id
        );
    } else {
        $stmt = $conn->prepare("UPDATE users SET username = ?, name = ?, email = ?, role = ?, is_active = ? WHERE id = ?");
        $stmt->bind_param("ssssii", 
            $data['username'],
            $data['name'],
            $data['email'],
            $data['role'],
            $is_active,
            $id
        );
    }
    
    return $stmt->execute();
}

function deleteUser($id) {
    global $conn;
    
    // Prevent deleting the last admin
    $checkAdmin = $conn->query("SELECT COUNT(*) as admin_count FROM users WHERE role = 'admin'");
    $adminCount = $checkAdmin->fetch_assoc()['admin_count'];
    
    $user = getUserById($id);
    if ($user['role'] === 'admin' && $adminCount <= 1) {
        return false;
    }
    
    $stmt = $conn->prepare("DELETE FROM users WHERE id = ?");
    $stmt->bind_param("i", $id);
    return $stmt->execute();
}

function getRoleColor($role)
{
    switch ($role) {
        case 'admin':
            return 'danger';

        case 'accountant':
            return 'info';

        case 'salesman':
            return 'success';

        case 'sales_manager':
            return 'primary';

        case 'inventory_manager':
            return 'warning';

        case 'inventory_supervisor':
            return 'secondary';

        case 'purchasing_supervisor':
            return 'dark';

        case 'operations_manager':
            return 'primary';

        case 'production_manager':
            return 'success';

        case 'production_supervisor':
            return 'warning';

        default:
            return 'secondary';
    }
}

?>