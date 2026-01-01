<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';
require_once '../../config/database.php';

if (!hasPermission('users.manage')) {
    setAlert('danger', 'Access denied.');
    redirect('../../dashboard.php');
}

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) { redirect('index.php'); }

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = trim($_POST['name'] ?? '');
    $slug = trim($_POST['slug'] ?? '');
    $description = trim($_POST['description'] ?? '');
    $is_active = !empty($_POST['is_active']) ? 1 : 0;

    if ($name === '' || $slug === '') {
        setAlert('danger', 'Name and slug are required.');
        redirect('edit.php?id=' . $id);
    }

    $stmt = $conn->prepare("UPDATE roles SET name=?, slug=?, description=?, is_active=? WHERE id=?");
    $stmt->bind_param('sssii', $name, $slug, $description, $is_active, $id);
    if ($stmt->execute()) {
        setAlert('success', 'Role updated.');
        redirect('index.php');
    } else {
        setAlert('danger', 'Failed to update role: ' . $conn->error);
    }
}

$role = $conn->query("SELECT * FROM roles WHERE id = " . $id)->fetch_assoc();
if (!$role) { redirect('index.php'); }

$page_title = 'Edit Role';
require_once '../../includes/header.php';
?>

<div class="container mt-4">
  <h2>Edit Role</h2>
  <form method="post" class="mt-3">
    <div class="row">
      <div class="col-md-6">
        <label class="form-label">Name *</label>
        <input type="text" name="name" class="form-control" value="<?= htmlspecialchars($role['name']) ?>" required>
      </div>
      <div class="col-md-6">
        <label class="form-label">Slug *</label>
        <input type="text" name="slug" class="form-control" value="<?= htmlspecialchars($role['slug']) ?>" required>
      </div>
    </div>
    <div class="mt-3">
      <label class="form-label">Description</label>
      <textarea name="description" class="form-control" rows="3"><?= htmlspecialchars($role['description'] ?? '') ?></textarea>
    </div>
    <div class="form-check form-switch mt-3">
      <input class="form-check-input" type="checkbox" name="is_active" id="is_active" <?= ((int)$role['is_active']===1?'checked':'') ?>>
      <label class="form-check-label" for="is_active">Active</label>
    </div>
    <div class="mt-4">
      <button class="btn btn-primary" type="submit">Save</button>
      <a class="btn btn-secondary" href="index.php">Cancel</a>
    </div>
  </form>
</div>

<?php require_once '../../includes/footer.php'; ?>

