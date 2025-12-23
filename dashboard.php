<?php
require_once 'includes/auth.php';
require_once 'includes/functions.php';

$page_title = 'Dashboard';
require_once 'includes/header.php';
?>

<div class="row">
    <div class="col-md-6 col-lg-3 mb-4">
        <div class="card bg-primary text-white">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="card-title">Total Sales</h6>
                        <h6 class="card-subtitle mb-2">Total / Paid</h6>
                        <?php
                        $sql = "SELECT SUM(total_amount) as total ,SUM(paid_amount) as paid FROM orders";
                        $result = $conn->query($sql);
                        $row = $result->fetch_assoc();
                        $total_amount = number_format($row['total'], 2);
                        $paid_amount = number_format($row['paid'], 2);


                        ?>
                        <h2 class="mb-0"><?php echo $total_amount . " / " . $paid_amount; ?></h2>
                    </div>
                    <div>
                        <i class="fas fa-box fa-3x opacity-50"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-md-6 col-lg-3 mb-4">
        <div class="card bg-success text-white">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="card-title">Total Orders</h6>
                        <h6 class="card-subtitle mb-2">New / In Production</h6>
                        <?php
                        $sql = "SELECT COUNT(*) as neworders FROM orders where status = 'new'";
                        $sql1 = "SELECT COUNT(*) as neworders FROM orders where status = 'in-production'";
                        $result = $conn->query($sql);
                        $result1 = $conn->query($sql1);
                        $new_orders = $result->fetch_assoc()['neworders'];
                        $prod_orders = $result1->fetch_assoc()['neworders'];

                        ?>
                        <h2 class="mb-0"><?php echo $new_orders . " / " . $prod_orders; ?></h2>
                    </div>
                    <div>
                        <i class="fas fa-users fa-3x opacity-50"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-md-6 col-lg-3 mb-4">
        <div class="card bg-info text-white">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="card-title">Today's Orders</h6>
                        <?php
                        $sql = "SELECT COUNT(*) as total FROM orders WHERE DATE(order_date) = CURDATE()";
                        $result = $conn->query($sql);
                        $today_orders = $result->fetch_assoc()['total'];
                        ?>
                        <h2 class="mb-0"><?php echo $today_orders; ?></h2>
                    </div>
                    <div>
                        <i class="fas fa-shopping-cart fa-3x opacity-50"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-md-6 col-lg-3 mb-4">
        <div class="card bg-warning text-dark">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="card-title">Low Stock Items</h6>
                        <?php
                        $sql = "SELECT COUNT(*) as total FROM inventory_products ip 
                                JOIN products p ON ip.product_id = p.id 
                                WHERE ip.quantity <= p.min_stock_level";
                        $result = $conn->query($sql);
                        $low_stock = $result->fetch_assoc()['total'];
                        ?>
                        <h2 class="mb-0"><?php echo $low_stock; ?></h2>
                    </div>
                    <div>
                        <i class="fas fa-exclamation-triangle fa-3x opacity-50"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8 mb-4">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Recent Orders</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Customer</th>
                                <th>Date</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT o.id, o.internal_id, o.order_date, o.total_amount, o.status, c.name as customer_name 
                                    FROM orders o 
                                    JOIN customers c ON o.customer_id = c.id 
                                    ORDER BY o.order_date DESC LIMIT 5";
                            $result = $conn->query($sql);
                            
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo '<tr>
                                            <td>' . $row['internal_id'] . '</td>
                                            <td>' . $row['customer_name'] . '</td>
                                            <td>' . date('d M Y', strtotime($row['order_date'])) . '</td>
                                            <td>' . number_format($row['total_amount'], 2) . '</td>
                                            <td><span class="badge bg-' . getStatusColor($row['status']) . '">' . ucfirst(str_replace('-', ' ', $row['status'])) . '</span></td>
                                            <td><a href="modules/sales/order_details.php?id=' . $row['id'] . '" class="btn btn-sm btn-outline-primary">View</a></td>
                                          </tr>';
                                }
                            } else {
                                echo '<tr><td colspan="6" class="text-center">No recent orders found</td></tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-md-4 mb-4">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Inventory Summary</h5>
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <?php
                    $sql = "SELECT i.name, COUNT(ip.product_id) as products, SUM(ip.quantity) as total_qty 
                            FROM inventories i 
                            LEFT JOIN inventory_products ip ON i.id = ip.inventory_id 
                            GROUP BY i.id";
                    $result = $conn->query($sql);
                    
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<li class="list-group-item d-flex justify-content-between align-items-center">
                                    ' . $row['name'] . '
                                    <span class="badge bg-primary rounded-pill">' . $row['products'] . ' items (' . $row['total_qty'] . ')</span>
                                  </li>';
                        }
                    } else {
                        echo '<li class="list-group-item">No inventory data found</li>';
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>

<?php require_once 'includes/footer.php'; ?>