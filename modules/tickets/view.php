<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';

if (!hasPermission('tickets.manage') && !hasPermission('tickets.create')) {
    setAlert('danger', 'Access denied.');
    redirect('../../dashboard.php');
}

global $conn;
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) redirect('index.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && hasPermission('tickets.manage')) {
    $status = $_POST['status'] ?? 'open';
    $priority = $_POST['priority'] ?? 'medium';
    $assignRole = !empty($_POST['assigned_to_role_id']) ? (int)$_POST['assigned_to_role_id'] : null;
    $assignUser = !empty($_POST['assigned_to_user_id']) ? (int)$_POST['assigned_to_user_id'] : null;
    $stmt = $conn->prepare("UPDATE tickets SET status=?, priority=?, assigned_to_role_id=?, assigned_to_user_id=? WHERE id=?");
    $stmt->bind_param('ssiii', $status, $priority, $assignRole, $assignUser, $id);
    $stmt->execute();
    $stmt->close();
    setAlert('success','Ticket updated.');
    redirect('view.php?id=' . $id);
}

$ticket = $conn->query("SELECT t.*, r.name AS assigned_role FROM tickets t LEFT JOIN roles r ON r.id=t.assigned_to_role_id WHERE t.id=".$id)->fetch_assoc();
if (!$ticket) redirect('index.php');
$roles = $conn->query("SELECT id, name, slug FROM roles WHERE is_active=1 ORDER BY name")->fetch_all(MYSQLI_ASSOC);

$page_title = 'Ticket #' . $id;
require_once '../../includes/header.php';
?>

<div class="container mt-4">
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Ticket #<?= (int)$id ?></h2>
    <a href="index.php" class="btn btn-secondary">Back</a>
  </div>

  <div class="card">
    <div class="card-body">
      <div class="row g-3">
        <div class="col-md-8">
          <h5 class="mb-2"><?= htmlspecialchars($ticket['title']) ?></h5>
          <div class="text-muted small mb-3">Created: <?= formatDateTime($ticket['created_at']) ?></div>
          <p class="mb-0"><?= nl2br(htmlspecialchars($ticket['description'])) ?></p>
        </div>
        <div class="col-md-4">
          <form method="post" class="vstack gap-2">
            <div>
              <label class="form-label">Status</label>
              <select name="status" class="form-select">
                <?php foreach (['open','in_progress','resolved','closed'] as $st): ?>
                  <option value="<?= $st ?>" <?= $ticket['status']===$st?'selected':'' ?>><?= ucfirst($st) ?></option>
                <?php endforeach; ?>
              </select>
            </div>
            <div>
              <label class="form-label">Priority</label>
              <select name="priority" class="form-select">
                <?php foreach (['low','medium','high','urgent'] as $p): ?>
                  <option value="<?= $p ?>" <?= $ticket['priority']===$p?'selected':'' ?>><?= ucfirst($p) ?></option>
                <?php endforeach; ?>
              </select>
            </div>
            <div>
              <label class="form-label">Assign to Role</label>
              <select name="assigned_to_role_id" class="form-select">
                <option value="">—</option>
                <?php foreach ($roles as $r): ?>
                  <option value="<?= (int)$r['id'] ?>" <?= ((int)$ticket['assigned_to_role_id']===(int)$r['id'])?'selected':'' ?>><?= htmlspecialchars($r['name']) ?> (<?= htmlspecialchars($r['slug']) ?>)</option>
                <?php endforeach; ?>
              </select>
            </div>
            <div>
              <label class="form-label">Assign to User (optional)</label>
              <input type="number" name="assigned_to_user_id" class="form-control" value="<?= (int)($ticket['assigned_to_user_id'] ?? 0) ?: '' ?>">
            </div>
            <?php if (hasPermission('tickets.manage')): ?>
              <div class="pt-2">
                <button class="btn btn-primary" type="submit">Save</button>
              </div>
            <?php endif; ?>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<?php require_once '../../includes/footer.php'; ?>

