<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';
require_once '../../config/database.php';

if (!hasPermission('users.manage')) {
    setAlert('danger', 'Access denied.');
    redirect('../../dashboard.php');
}

$role_id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($role_id <= 0) { redirect('index.php'); }

// Save changes
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $selected = isset($_POST['permissions']) && is_array($_POST['permissions']) ? array_map('intval', $_POST['permissions']) : [];

    $conn->begin_transaction();
    try {
        $stmt = $conn->prepare('DELETE FROM role_permissions WHERE role_id=?');
        $stmt->bind_param('i', $role_id);
        $stmt->execute();
        $stmt->close();

        if (!empty($selected)) {
            $ins = $conn->prepare('INSERT INTO role_permissions (role_id, permission_id) VALUES (?, ?)');
            foreach ($selected as $pid) {
                $ins->bind_param('ii', $role_id, $pid);
                $ins->execute();
            }
            $ins->close();
        }

        $conn->commit();
        setAlert('success', 'Permissions updated.');
    } catch (Throwable $e) {
        $conn->rollback();
        setAlert('danger', 'Failed to update permissions: ' . $e->getMessage());
    }
}

$role = $conn->query('SELECT * FROM roles WHERE id=' . $role_id)->fetch_assoc();
if (!$role) { redirect('index.php'); }

$perms = $conn->query('SELECT * FROM permissions ORDER BY module, name')->fetch_all(MYSQLI_ASSOC);
$assigned = $conn->query('SELECT permission_id FROM role_permissions WHERE role_id=' . $role_id)->fetch_all(MYSQLI_ASSOC);
$assignedIds = array_map(function($r){ return (int)$r['permission_id']; }, $assigned);

$page_title = 'Role Permissions';
require_once '../../includes/header.php';
?>

<div class="container mt-4">
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Permissions: <?= htmlspecialchars($role['name']) ?> (<?= htmlspecialchars($role['slug']) ?>)</h2>
    <a href="index.php" class="btn btn-secondary">Back</a>
  </div>

  <form method="post">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <?php
            $byModule = [];
            foreach ($perms as $p) { $byModule[$p['module'] ?? 'general'][] = $p; }
            ksort($byModule);
          ?>
          <?php foreach ($byModule as $module => $permList): ?>
            <div class="col-md-6">
              <h5 class="text-capitalize"><?= htmlspecialchars($module) ?></h5>
              <?php foreach ($permList as $p): ?>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="perm_<?= (int)$p['id'] ?>" name="permissions[]" value="<?= (int)$p['id'] ?>" <?= in_array((int)$p['id'], $assignedIds, true) ? 'checked' : '' ?>>
                  <label class="form-check-label" for="perm_<?= (int)$p['id'] ?>">
                    <code><?= htmlspecialchars($p['key']) ?></code> — <?= htmlspecialchars($p['name']) ?>
                  </label>
                </div>
              <?php endforeach; ?>
              <hr>
            </div>
          <?php endforeach; ?>
        </div>
        <div class="mt-3">
          <button class="btn btn-primary" type="submit"><i class="fas fa-save"></i> Save</button>
        </div>
      </div>
    </div>
  </form>
</div>

<?php require_once '../../includes/footer.php'; ?>

