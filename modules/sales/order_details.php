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

// Get order ID
$order_id = $_GET['id'] ?? 0;

// Fetch order details
$stmt = $pdo->prepare("
    SELECT o.*, c.name AS customer_name, cc.name AS contact_name, 
           cc.phone AS contact_phone, u.name AS created_by_name
    FROM orders o
    JOIN customers c ON o.customer_id = c.id
    JOIN customer_contacts cc ON o.contact_id = cc.id
    JOIN users u ON o.created_by = u.id
    WHERE o.id = ?
");
$stmt->execute([$order_id]);
$order = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$order) {
    $_SESSION['error'] = "Order not found";
    header("Location: order_list.php");
    exit();
}

// Fetch order items
$stmt = $pdo->prepare("
    SELECT oi.*, p.name AS product_name, p.sku, p.barcode
    FROM order_items oi
    JOIN products p ON oi.product_id = p.id
    WHERE oi.order_id = ?
");
$stmt->execute([$order_id]);
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Fetch payments
$stmt = $pdo->prepare("
    SELECT op.*, u.name AS created_by_name
    FROM order_payments op
    JOIN users u ON op.created_by = u.id
    WHERE op.order_id = ?
    ORDER BY op.created_at DESC
");
$stmt->execute([$order_id]);
$payments = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Handle status update
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['update_status'])) {
    $new_status = $_POST['status'];
    
    try {
        $stmt = $pdo->prepare("UPDATE orders SET status = ? WHERE id = ?");
        $stmt->execute([$new_status, $order_id]);
        
        $_SESSION['success'] = "Order status updated successfully!";
        header("Location: order_details.php?id=" . $order_id);
        exit();
    } catch (PDOException $e) {
        $_SESSION['error'] = "Error updating order status: " . $e->getMessage();
    }
}
?>

<div class="container mt-4">
    <h2>Order Details</h2>
    
    <?php include '../../includes/messages.php'; ?>
    
    <div class="card mb-4">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h4>Order #<?= htmlspecialchars($order['internal_id']) ?></h4>
            <div>
                <a href="order_list.php" class="btn btn-sm btn-secondary">Back to List</a>
                <a href="generate_invoice.php?id=<?= $order_id ?>" class="btn btn-sm btn-primary" target="_blank">Print Invoice</a>
            </div>
        </div>
        <div class="card-body">
            <div class="row mb-4">
                <div class="col-md-6">
                    <h5>Customer Information</h5>
                    <p><strong>Customer:</strong> <?= htmlspecialchars($order['customer_name']) ?></p>
                    <p><strong>Contact Person:</strong> <?= htmlspecialchars($order['contact_name']) ?></p>
                    <p><strong>Contact Phone:</strong> <?= htmlspecialchars($order['contact_phone']) ?></p>
                </div>
                <div class="col-md-6">
                    <h5>Order Information</h5>
                    <p><strong>Order Date:</strong> <?= date('M d, Y', strtotime($order['order_date'])) ?></p>
                    <p><strong>Created By:</strong> <?= htmlspecialchars($order['created_by_name']) ?></p>
                    <p>
                        <strong>Status:</strong> 
                        <?php 
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
                        <span class="badge <?= $status_class[$order['status']] ?>">
                            <?= ucwords(str_replace('-', ' ', $order['status'])) ?>
                        </span>
                    </p>
                </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-12">
                    <h5>Order Items</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>SKU</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($items as $item) : ?>
                                <tr>
                                    <td><?= htmlspecialchars($item['sku']) ?></td>
                                    <td><?= htmlspecialchars($item['product_name']) ?></td>
                                    <td><?= $item['quantity'] ?></td>
                                    <td><?= number_format($item['unit_price'], 2) ?></td>
                                    <td><?= number_format($item['total_price'], 2) ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="4" class="text-end"><strong>Subtotal:</strong></td>
                                <td><?= number_format($order['total_amount'], 2) ?></td>
                            </tr>
                            <tr>
                                <td colspan="4" class="text-end"><strong>Paid Amount:</strong></td>
                                <td><?= number_format($order['paid_amount'], 2) ?></td>
                            </tr>
                            <tr>
                                <td colspan="4" class="text-end"><strong>Balance:</strong></td>
                                <td class="<?= ($order['total_amount'] - $order['paid_amount']) > 0 ? 'text-danger' : 'text-success' ?>">
                                    <?= number_format($order['total_amount'] - $order['paid_amount'], 2) ?>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6">
                    <h5>Payment History</h5>
                    <?php if (empty($payments)) : ?>
                        <p>No payments recorded yet.</p>
                    <?php else : ?>
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Method</th>
                                    <th>By</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($payments as $payment) : ?>
                                    <tr>
                                        <td><?= date('M d, Y', strtotime($payment['created_at'])) ?></td>
                                        <td><?= number_format($payment['amount'], 2) ?></td>
                                        <td><?= ucfirst($payment['payment_method']) ?></td>
                                        <td><?= htmlspecialchars($payment['created_by_name']) ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php endif; ?>
                </div>
                
                <div class="col-md-6">
                    <h5>Order Notes</h5>
                    <p><?= nl2br(htmlspecialchars($order['notes'] ?? 'No notes available')) ?></p>
                    
                    <?php if (in_array($_SESSION['user_role'], ['admin', 'salesman'])) : ?>
                        <hr>
                        <h5>Update Status</h5>
                        <form method="post">
                            <div class="input-group mb-3">
                                <select class="form-select" name="status">
                                    <option value="new" <?= $order['status'] == 'new' ? 'selected' : '' ?>>New</option>
                                    <option value="in-production" <?= $order['status'] == 'in-production' ? 'selected' : '' ?>>In Production</option>
                                    <option value="in-packing" <?= $order['status'] == 'in-packing' ? 'selected' : '' ?>>In Packing</option>
                                    <option value="delivering" <?= $order['status'] == 'delivering' ? 'selected' : '' ?>>Delivering</option>
                                    <option value="delivered" <?= $order['status'] == 'delivered' ? 'selected' : '' ?>>Delivered</option>
                                    <option value="returned" <?= $order['status'] == 'returned' ? 'selected' : '' ?>>Returned</option>
                                </select>
                                <button type="submit" name="update_status" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                        
                        <?php if (($order['total_amount'] - $order['paid_amount']) > 0) : ?>
                            <a href="process_payment.php?order_id=<?= $order_id ?>" class="btn btn-success">Record Payment</a>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once '../../includes/footer.php'; ?>