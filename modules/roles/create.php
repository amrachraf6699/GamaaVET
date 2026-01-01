<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';
require_once '../../config/database.php';

if (!hasPermission('users.manage')) {
    setAlert('danger', 'Access denied.');
    redirect('../../dashboard.php');
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = trim($_POST['name'] ?? '');
    $slug = trim($_POST['slug'] ?? '');
    $description = trim($_POST['description'] ?? '');
    $is_active = !empty($_POST['is_active']) ? 1 : 0;

    if ($name === '' || $slug === '') {
        setAlert('danger', 'Name and slug are required.');
        redirect('create.php');
    }

    $stmt = $conn->prepare("INSERT INTO roles (name, slug, description, is_active) VALUES (?, ?, ?, ?)");
    $stmt->bind_param('sssi', $name, $slug, $description, $is_active);
    if ($stmt->execute()) {
        setAlert('success', 'Role created.');
        redirect('index.php');
    } else {
        setAlert('danger', 'Failed to create role: ' . $conn->error);
    }
}

$page_title = 'Create Role';
require_once '../../includes/header.php';
?>

<div class="container mt-4">
  <h2>Create Role</h2>
  <form method="post" class="mt-3">
    <div class="row">
      <div class="col-md-6">
        <label class="form-label">Name *</label>
        <input type="text" name="name" class="form-control" required>
      </div>
      <div class="col-md-6">
        <label class="form-label">Slug *</label>
        <input type="text" name="slug" class="form-control" required>
      </div>
    </div>
    <div class="mt-3">
      <label class="form-label">Description</label>
      <textarea name="description" class="form-control" rows="3"></textarea>
    </div>
    <div class="form-check form-switch mt-3">
      <input class="form-check-input" type="checkbox" name="is_active" id="is_active" checked>
      <label class="form-check-label" for="is_active">Active</label>
    </div>
    <div class="mt-4">
      <button class="btn btn-primary" type="submit">Create</button>
      <a class="btn btn-secondary" href="index.php">Cancel</a>
    </div>
  </form>
</div>

<?php require_once '../../includes/footer.php'; ?>

