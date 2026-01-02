<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';

if (!hasPermission('tickets.create')) {
    setAlert('danger', 'Access denied.');
    redirect('../../dashboard.php');
}

global $conn;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = trim($_POST['title'] ?? '');
    $description = trim($_POST['description'] ?? '');
    $priority = $_POST['priority'] ?? 'medium';
    $assignRole = !empty($_POST['assigned_to_role_id']) ? (int)$_POST['assigned_to_role_id'] : null;
    $assignUser = !empty($_POST['assigned_to_user_id']) ? (int)$_POST['assigned_to_user_id'] : null;

    if ($title === '') {
        setAlert('danger', 'Title is required.');
        redirect('create.php');
    }

    $id = createTicket(null, $title, $description, $priority, $assignRole, $assignUser);
    setAlert('success', 'Ticket #' . $id . ' created.');
    redirect('view.php?id=' . $id);
}

$roles = $conn->query("SELECT id, name, slug FROM roles WHERE is_active=1 ORDER BY name")->fetch_all(MYSQLI_ASSOC);

$page_title = 'Create Ticket';
require_once '../../includes/header.php';
?>

<div class="container mt-4">
  <h2>Create Ticket</h2>
  <form method="post" class="mt-3">
    <div class="mb-3">
      <label class="form-label">Title *</label>
      <input type="text" name="title" class="form-control" required>
    </div>
    <div class="mb-3">
      <label class="form-label">Description</label>
      <textarea name="description" rows="5" class="form-control"></textarea>
    </div>
    <div class="row">
      <div class="col-md-4">
        <label class="form-label">Priority</label>
        <select name="priority" class="form-select">
          <option value="low">Low</option>
          <option value="medium" selected>Medium</option>
          <option value="high">High</option>
          <option value="urgent">Urgent</option>
        </select>
      </div>
      <div class="col-md-4">
        <label class="form-label">Assign to Role</label>
        <select name="assigned_to_role_id" class="form-select">
          <option value="">—</option>
          <?php foreach ($roles as $r): ?>
            <option value="<?= (int)$r['id'] ?>"><?= htmlspecialchars($r['name']) ?> (<?= htmlspecialchars($r['slug']) ?>)</option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="col-md-4">
        <label class="form-label">Assign to User (optional)</label>
        <input type="number" name="assigned_to_user_id" class="form-control" placeholder="User ID">
      </div>
    </div>
    <div class="mt-4">
      <button class="btn btn-primary" type="submit">Create</button>
      <a class="btn btn-secondary" href="index.php">Cancel</a>
    </div>
  </form>
</div>

<?php require_once '../../includes/footer.php'; ?>

