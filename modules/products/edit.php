<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';

if (!hasRole('admin') && !hasRole('inventory_manager')) {
    setAlert('danger', 'You do not have permission to access this page.');
    redirect('../../dashboard.php');
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = sanitize($_POST['id']);
    $name = sanitize($_POST['name']);
    $sku = sanitize($_POST['sku']);
    $barcode = sanitize($_POST['barcode']);
    $type = sanitize($_POST['type']);
    $category_id = sanitize($_POST['category_id']);
    $subcategory_id = !empty($_POST['subcategory_id']) ? sanitize($_POST['subcategory_id']) : NULL;
    $unit_price = sanitize($_POST['unit_price']);
    $cost_price = !empty($_POST['cost_price']) ? sanitize($_POST['cost_price']) : NULL;
    $min_stock_level = !empty($_POST['min_stock_level']) ? sanitize($_POST['min_stock_level']) : 0;
    $description = sanitize($_POST['description']);
    
    // Check if SKU already exists (excluding current product)
    $check_sql = "SELECT id FROM products WHERE sku = ? AND id != ?";
    $check_stmt = $conn->prepare($check_sql);
    $check_stmt->bind_param("si", $sku, $id);
    $check_stmt->execute();
    $check_result = $check_stmt->get_result();
    
    if ($check_result->num_rows > 0) {
        setAlert('danger', 'Another product with this SKU already exists.');
        $check_stmt->close();
        redirect('index.php');
    }
    $check_stmt->close();
    
    // Handle file upload
    $image_name = NULL;
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $upload_dir = '../../assets/uploads/products/';
        $file_ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $image_name = 'product_' . time() . '.' . strtolower($file_ext);
        $upload_path = $upload_dir . $image_name;
        
        // Check if image file is a actual image
        $check = getimagesize($_FILES['image']['tmp_name']);
        if ($check === false) {
            setAlert('danger', 'File is not an image.');
            redirect('index.php');
        }
        
        // Check file size (max 2MB)
        if ($_FILES['image']['size'] > 2000000) {
            setAlert('danger', 'Sorry, your file is too large. Max 2MB allowed.');
            redirect('index.php');
        }
        
        // Allow certain file formats
        $allowed_ext = ['jpg', 'jpeg', 'png', 'gif'];
        if (!in_array(strtolower($file_ext), $allowed_ext)) {
            setAlert('danger', 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.');
            redirect('index.php');
        }
        
        // Try to upload file
        if (!move_uploaded_file($_FILES['image']['tmp_name'], $upload_path)) {
            setAlert('danger', 'Sorry, there was an error uploading your file.');
            redirect('index.php');
        }
        
        // Delete old image if exists
        $old_image_sql = "SELECT image FROM products WHERE id = ?";
        $old_image_stmt = $conn->prepare($old_image_sql);
        $old_image_stmt->bind_param("i", $id);
        $old_image_stmt->execute();
        $old_image_result = $old_image_stmt->get_result();
        $old_image = $old_image_result->fetch_assoc()['image'];
        $old_image_stmt->close();
        
        if ($old_image && file_exists($upload_dir . $old_image)) {
            unlink($upload_dir . $old_image);
        }
    } else {
        // Keep the existing image if no new image uploaded
        $image_sql = "SELECT image FROM products WHERE id = ?";
        $image_stmt = $conn->prepare($image_sql);
        $image_stmt->bind_param("i", $id);
        $image_stmt->execute();
        $image_result = $image_stmt->get_result();
        $image_name = $image_result->fetch_assoc()['image'];
        $image_stmt->close();
    }
    
    // Update product
    $update_sql = "UPDATE products SET 
                   name = ?, sku = ?, barcode = ?, type = ?, category_id = ?, subcategory_id = ?, 
                   unit_price = ?, cost_price = ?, min_stock_level = ?, description = ?, image = ? 
                   WHERE id = ?";
    $update_stmt = $conn->prepare($update_sql);
    $update_stmt->bind_param("ssssiidddssi", $name, $sku, $barcode, $type, $category_id, $subcategory_id, 
                            $unit_price, $cost_price, $min_stock_level, $description, $image_name, $id);
    
    if ($update_stmt->execute()) {
        setAlert('success', 'Product updated successfully.');
        logActivity("Updated product ID: $id");
    } else {
        setAlert('danger', 'Error updating product: ' . $conn->error);
    }
    $update_stmt->close();
}

redirect('index.php');
?>