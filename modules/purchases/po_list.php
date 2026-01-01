<?php
require_once '../../includes/auth.php';
require_once '../../includes/header.php';
require_once '../../config/database.php';

// Permission check
if (!hasPermission('purchases.view_all')) {
    $_SESSION['error'] = "You don't have permission to access this page";
    header("Location: ../../dashboard.php");
    exit();
}

// Filter parameters
$status = $_GET['status'] ?? '';
$vendor_id = $_GET['vendor_id'] ?? '';
$date_from = $_GET['date_from'] ?? '';
$date_to = $_GET['date_to'] ?? '';

// Build query
$query = "SELECT po.id, po.order_date, po.total_amount, po.paid_amount, 
                 po.status, v.name AS vendor_name 
          FROM purchase_orders po
          JOIN vendors v ON po.vendor_id = v.id
          WHERE 1=1";
$params = [];

if (!empty($status)) {
    $query .= " AND po.status = ?";
    $params[] = $status;
}

if (!empty($vendor_id)) {
    $query .= " AND po.vendor_id = ?";
    $params[] = $vendor_id;
}

if (!empty($date_from)) {
    $query .= " AND po.order_date >= ?";
    $params[] = $date_from;
}

if (!empty($date_to)) {
    $query .= " AND po.order_date <= ?";
    $params[] = $date_to;
}

$query .= " ORDER BY po.order_date DESC";

// Get purchase orders
$stmt = $pdo->prepare($query);
$stmt->execute($params);
$purchase_orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get vendors for filter dropdown
$vendors = $pdo->query("SELECT id, name FROM vendors ORDER BY name")->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="container mt-4">
    <h2>Purchase Order Management</h2>
    
    <?php include '../../includes/messages.php'; ?>
    
    <div class="card mb-4">
        <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
                <h4>Purchase Order List</h4>
                <a href="create_po.php" class="btn btn-primary btn-sm">New PO</a>
            </div>
        </div>
        <div class="card-body">
            <form method="get" class="mb-4">
                <div class="row g-3">
                    <div class="col-md-3">
                        <label for="status" class="form-label">Status</label>
                        <select class="form-select" id="status" name="status">
                            <option value="">All Statuses</option>
                            <option value="new" <?= $status == 'new' ? 'selected' : '' ?>>New</option>
                            <option value="ordered" <?= $status == 'ordered' ? 'selected' : '' ?>>Ordered</option>
                            <option value="partially-received" <?= $status == 'partially-received' ? 'selected' : '' ?>>Partially Received</option>
                            <option value="received" <?= $status == 'received' ? 'selected' : '' ?>>Received</option>
                            <option value="cancelled" <?= $status == 'cancelled' ? 'selected' : '' ?>>Cancelled</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="vendor_id" class="form-label">Vendor</label>
                        <select class="form-select" id="vendor_id" name="vendor_id">
                            <option value="">All Vendors</option>
                            <?php foreach ($vendors as $vendor) : ?>
                                <option value="<?= $vendor['id'] ?>" <?= $vendor_id == $vendor['id'] ? 'selected' : '' ?>>
                                    <?= htmlspecialchars($vendor['name']) ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="date_from" class="form-label">From Date</label>
                        <input type="date" class="form-control" id="date_from" name="date_from" value="<?= $date_from ?>">
                    </div>
                    <div class="col-md-3">
                        <label for="date_to" class="form-label">To Date</label>
                        <input type="date" class="form-control" id="date_to" name="date_to" value="<?= $date_to ?>">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Filter</button>
                        <a href="po_list.php" class="btn btn-secondary">Reset</a>
                    </div>
                </div>
            </form>
            
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>PO #</th>
                            <th>Vendor</th>
                            <th>Date</th>
                            <th>Total</th>
                            <th>Paid</th>
                            <th>Balance</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($purchase_orders as $po) : 
                            $balance = $po['total_amount'] - $po['paid_amount'];
                            $status_class = [
                                'new' => 'bg-secondary',
                                'ordered' => 'bg-primary',
                                'partially-received' => 'bg-info',
                                'received' => 'bg-success',
                                'cancelled' => 'bg-danger'
                            ];
                        ?>
                            <tr>
                                <td>PO-<?= $po['id'] ?></td>
                                <td><?= htmlspecialchars($po['vendor_name']) ?></td>
                                <td><?= date('M d, Y', strtotime($po['order_date'])) ?></td>
                                <td><?= number_format($po['total_amount'], 2) ?></td>
                                <td><?= number_format($po['paid_amount'], 2) ?></td>
                                <td class="<?= $balance > 0 ? 'text-danger' : 'text-success' ?>">
                                    <?= number_format($balance, 2) ?>
                                </td>
                                <td>
                                    <span class="badge <?= $status_class[$po['status']] ?>">
                                        <?= ucwords(str_replace('-', ' ', $po['status'])) ?>
                                    </span>
                                </td>
                                <td>
                                    <a href="po_details.php?id=<?= $po['id'] ?>" class="btn btn-sm btn-info">View</a>
                                    <?php if ($po['status'] == 'new' || $po['status'] == 'ordered') : ?>
                                        <a href="receive_items.php?po_id=<?= $po['id'] ?>" class="btn btn-sm btn-success">Receive</a>
                                    <?php endif; ?>
                                    <?php if ($balance > 0) : ?>
                                        <a href="process_payment.php?po_id=<?= $po['id'] ?>" class="btn btn-sm btn-primary">Payment</a>
                                    <?php endif; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php require_once '../../includes/footer.php'; ?>
