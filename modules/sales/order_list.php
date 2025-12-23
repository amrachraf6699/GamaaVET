<?php
require_once '../../includes/auth.php';
require_once '../../includes/header.php';
require_once '../../config/database.php';

// Check user role
if (!in_array($_SESSION['user_role'], ['admin', 'salesman', 'accountant'])) {
    $_SESSION['error'] = "You don't have permission to access this page";
    header("Location: ../../dashboard.php");
    exit();
}

// Filter parameters
$status = $_GET['status'] ?? '';
$customer_id = $_GET['customer_id'] ?? '';
$date_from = $_GET['date_from'] ?? '';
$date_to = $_GET['date_to'] ?? '';

// Build query
$query = "SELECT o.id, o.internal_id, o.order_date, o.total_amount, o.paid_amount, 
                 o.status, c.name AS customer_name 
          FROM orders o
          JOIN customers c ON o.customer_id = c.id
          WHERE 1=1";
$params = [];

if (!empty($status)) {
    $query .= " AND o.status = ?";
    $params[] = $status;
}

if (!empty($customer_id)) {
    $query .= " AND o.customer_id = ?";
    $params[] = $customer_id;
}

if (!empty($date_from)) {
    $query .= " AND o.order_date >= ?";
    $params[] = $date_from;
}

if (!empty($date_to)) {
    $query .= " AND o.order_date <= ?";
    $params[] = $date_to;
}

$query .= " ORDER BY o.order_date DESC";

// Get orders
$stmt = $pdo->prepare($query);
$stmt->execute($params);
$orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get customers for filter dropdown
$customers = $pdo->query("SELECT id, name FROM customers ORDER BY name")->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="container mt-4">
    <h2>Order Management</h2>
    
    <?php include '../../includes/messages.php'; ?>
    
    <div class="card mb-4">
        <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
                <h4>Order List</h4>
                <a href="create_order.php" class="btn btn-primary btn-sm">New Order</a>
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
                            <option value="in-production" <?= $status == 'in-production' ? 'selected' : '' ?>>In Production</option>
                            <option value="in-packing" <?= $status == 'in-packing' ? 'selected' : '' ?>>In Packing</option>
                            <option value="delivering" <?= $status == 'delivering' ? 'selected' : '' ?>>Delivering</option>
                            <option value="delivered" <?= $status == 'delivered' ? 'selected' : '' ?>>Delivered</option>
                            <option value="returned" <?= $status == 'returned' ? 'selected' : '' ?>>Returned</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="customer_id" class="form-label">Customer</label>
                        <select class="form-select" id="customer_id" name="customer_id">
                            <option value="">All Customers</option>
                            <?php foreach ($customers as $customer) : ?>
                                <option value="<?= $customer['id'] ?>" <?= $customer_id == $customer['id'] ? 'selected' : '' ?>>
                                    <?= htmlspecialchars($customer['name']) ?>
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
                        <a href="order_list.php" class="btn btn-secondary">Reset</a>
                    </div>
                </div>
            </form>
            
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer</th>
                            <th>Date</th>
                            <th>Total</th>
                            <th>Paid</th>
                            <th>Balance</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($orders as $order) : 
                            $balance = $order['total_amount'] - $order['paid_amount'];
                            $status_class = [
                                'new' => 'bg-primary',
                                'in-production' => 'bg-info',
                                'in-packing' => 'bg-info',
                                'delivering' => 'bg-warning',
                                'delivered' => 'bg-success',
                                'returned' => 'bg-danger',
                                'returned-refunded' => 'bg-secondary',
                                'partially-returned' => 'bg-danger',
                                'partially-returned-refunded' => 'bg-secondary'
                            ];
                        ?>
                            <tr>
                                <td><?= htmlspecialchars($order['internal_id']) ?></td>
                                <td><?= htmlspecialchars($order['customer_name']) ?></td>
                                <td><?= date('M d, Y', strtotime($order['order_date'])) ?></td>
                                <td><?= number_format($order['total_amount'], 2) ?></td>
                                <td><?= number_format($order['paid_amount'], 2) ?></td>
                                <td class="<?= $balance > 0 ? 'text-danger' : 'text-success' ?>">
                                    <?= number_format($balance, 2) ?>
                                </td>
                                <td>
                                    <span class="badge <?= $status_class[$order['status']] ?>">
                                        <?= ucwords(str_replace('-', ' ', $order['status'])) ?>
                                    </span>
                                </td>
                                <td>
                                    <a href="order_details.php?id=<?= $order['id'] ?>" class="btn btn-sm btn-info">View</a>
                                    <?php if ($order['status'] == 'new' || $balance > 0) : ?>
                                        <a href="process_payment.php?order_id=<?= $order['id'] ?>" class="btn btn-sm btn-success">Payment</a>
                                    <?php endif; ?>
                                    <a href="generate_invoice.php?id=<?= $order['id'] ?>" class="btn btn-sm btn-secondary" target="_blank">Invoice</a>
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