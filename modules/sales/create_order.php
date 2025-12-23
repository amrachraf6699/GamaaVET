<?php
require_once '../../includes/auth.php';
require_once '../../includes/header.php';
require_once '../../config/database.php';

// Check user role
if (!in_array($_SESSION['user_role'], ['admin', 'salesman'])) {
    $_SESSION['error'] = "You don't have permission to access this page";
    header("Location: ../../dashboard.php");
    exit();
}

// Generate internal ID
$internal_id = 'ORD-' . date('Ymd') . '-' . strtoupper(substr(uniqid(), -6));

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    try {
        $pdo->beginTransaction();

        // Insert order
        $stmt = $pdo->prepare("
            INSERT INTO orders (
                internal_id, customer_id, contact_id, order_date, status, 
                total_amount, paid_amount, notes, created_by
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        ");

        $total_amount = array_sum(array_map(function ($item) {
            return $item['quantity'] * $item['price'];
        }, $_POST['items']));

        $stmt->execute([
            $_POST['internal_id'],
            $_POST['customer_id'],
            $_POST['contact_id'],
            $_POST['order_date'],
            'new',
            $total_amount,
            0.00,
            $_POST['notes'],
            $_SESSION['user_id']
        ]);

        $order_id = $pdo->lastInsertId();

        // Insert order items
        $stmt = $pdo->prepare("
            INSERT INTO order_items (order_id, product_id, quantity, unit_price, total_price)
            VALUES (?, ?, ?, ?, ?)
        ");

        foreach ($_POST['items'] as $item) {
            if ($item['product_id'] && $item['quantity'] > 0) {
                $total_price = $item['quantity'] * $item['price'];
                $stmt->execute([
                    $order_id,
                    $item['product_id'],
                    $item['quantity'],
                    $item['price'],
                    $total_price
                ]);

                // Update inventory (if final product)
                // This would need to be enhanced based on your inventory logic
                $product_type = $pdo->query("SELECT type FROM products WHERE id = " . $item['product_id'])->fetchColumn();
                if ($product_type == 'final') {
                    $pdo->exec(
                        "
                        UPDATE inventory_products 
                        SET quantity = quantity - " . $item['quantity'] . " 
                        WHERE product_id = " . $item['product_id'] . " 
                        AND inventory_id = 1" // Assuming main inventory is ID 1
                    );
                }
            }
        }

        $pdo->commit();

        $_SESSION['success'] = "Order created successfully!";
        header("Location: order_details.php?id=" . $order_id);
        exit();
    } catch (PDOException $e) {
        $pdo->rollBack();
        $_SESSION['error'] = "Error creating order: " . $e->getMessage();
    }
}

// Get customers for dropdown
$customers = $pdo->query("SELECT id, name FROM customers ORDER BY name")->fetchAll(PDO::FETCH_ASSOC);

// Get products for dropdown
$products = $pdo->query("
    SELECT p.id, p.name, p.sku, p.unit_price, c.name as category 
    FROM products p
    JOIN categories c ON p.category_id = c.id
    WHERE p.type = 'final'
    ORDER BY p.name
")->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="container mt-4">
    <h2>Create New Order</h2>

    <?php include '../../includes/messages.php'; ?>

    <form id="orderForm" method="post">
        <div class="card mb-4">
            <div class="card-header">Order Information</div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label for="internal_id" class="form-label">Order ID</label>
                            <input type="text" class="form-control" id="internal_id" name="internal_id"
                                value="<?= $internal_id ?>" readonly>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label for="order_date" class="form-label">Order Date</label>
                            <input type="date" class="form-control" id="order_date" name="order_date"
                                value="<?= date('Y-m-d') ?>" required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label for="customer_id" class="form-label">Customer</label>
                            <select class="form-select" id="customer_id" name="customer_id" required>
                                <option value="">Select Customer</option>
                                <?php foreach ($customers as $customer) : ?>
                                    <option value="<?= $customer['id'] ?>"><?= htmlspecialchars($customer['name']) ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="contact_id" class="form-label">Contact Person</label>
                            <select class="form-select" id="contact_id" name="contact_id" required disabled>
                                <option value="">Select Customer First</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="notes" class="form-label">Notes</label>
                            <textarea class="form-control" id="notes" name="notes" rows="2"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header d-flex justify-content-between align-items-center">
                <span>Order Items</span>
                <button type="button" class="btn btn-sm btn-primary" id="addItemBtn">Add Item</button>
            </div>
            <div class="card-body">
                <table class="table" id="itemsTable">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Total</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Items will be added dynamically -->
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3" class="text-end"><strong>Total:</strong></td>
                            <td><span id="orderTotal">0.00</span></td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>

        <div class="d-flex justify-content-between">
            <a href="index.php" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary">Create Order</button>
        </div>
    </form>
</div>

<!-- Product selection modal -->
<div class="modal fade" id="productModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Select Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-hover" id="productsTable">
                    <thead>
                        <tr>
                            <th>SKU</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($products as $product) : ?>
                            <tr>
                                <td><?= htmlspecialchars($product['sku']) ?></td>
                                <td><?= htmlspecialchars($product['name']) ?></td>
                                <td><?= htmlspecialchars($product['category']) ?></td>
                                <td><?= number_format($product['unit_price'], 2) ?></td>
                                <td>
                                    <?php
                                    $stock = $pdo->query(
                                        "
                                        SELECT SUM(quantity) 
                                        FROM inventory_products 
                                        WHERE product_id = " . $product['id']
                                    )->fetchColumn();
                                    echo $stock ? number_format($stock) : '0';
                                    ?>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-sm btn-primary select-product"
                                        data-id="<?= $product['id'] ?>"
                                        data-name="<?= htmlspecialchars($product['name']) ?>"
                                        data-price="<?= $product['unit_price'] ?>">
                                        Select
                                    </button>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        console.log("Document ready");
        // Load contacts when customer changes
        $('#customer_id').on('change', function() {
            const customerId = $(this).val();

            if (!customerId) {
                $('#contact_id').prop('disabled', true)
                    .html('<option value="">Select Customer First</option>');
                return;
            }

            $('#contact_id').prop('disabled', false)
                .html('<option>Loading...</option>');

            $.getJSON('../../ajax/get_customer_details.php', {
                    customer_id: customerId
                })
                .done(function(resp) {
                    if (!resp || resp.success !== true || !Array.isArray(resp.contacts)) {
                        console.error('Unexpected response:', resp);
                        $('#contact_id').html('<option value="">No contacts found</option>');
                        return;
                    }

                    let options = '<option value="">Select Contact</option>';
                    resp.contacts.forEach(c => {
                        const selected = c.is_primary ? 'selected' : '';
                        const phone = c.phone ? ` (${c.phone})` : '';
                        options += `<option value="${c.id}" ${selected}>${c.name}${phone}</option>`;
                    });
                    $('#contact_id').html(options);
                })
                .fail(function(xhr) {
                    console.error('Contacts load failed:', xhr.status, xhr.responseText);
                    $('#contact_id').html('<option value="">Failed to load contacts</option>');
                });
        });


        // Add item button
        $('#addItemBtn').click(function() {
            console.log("Add item button clicked");
            $('#productModal').modal('show');
        });

        // Product selection
        $(document).on('click', '.select-product', function() {
            const productId = $(this).data('id');
            const productName = $(this).data('name');
            const productPrice = parseFloat($(this).data('price'));

            const rowId = 'item_' + productId;

            if ($('#' + rowId).length) {
                // If product already exists in table, just increase quantity
                const qtyInput = $('#' + rowId).find('.item-qty');
                qtyInput.val(parseInt(qtyInput.val()) + 1);
                updateRowTotal($('#' + rowId));
            } else {
                // Add new row
                const newRow = `
                <tr id="${rowId}">
                    <td>
                        ${productName}
                        <input type="hidden" name="items[${productId}][product_id]" value="${productId}">
                    </td>
                    <td>
                        <input type="number" class="form-control form-control-sm item-qty" 
                               name="items[${productId}][quantity]" value="1" min="1">
                    </td>
                    <td>
                        <input type="number" class="form-control form-control-sm item-price" 
                               name="items[${productId}][price]" value="${productPrice}" step="0.01" min="0">
                    </td>
                    <td class="item-total">${productPrice.toFixed(2)}</td>
                    <td>
                        <button type="button" class="btn btn-sm btn-danger remove-item">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                </tr>
            `;
                $('#itemsTable tbody').append(newRow);
            }

            updateOrderTotal();
            $('#productModal').modal('hide');
        });

        // Remove item
        $(document).on('click', '.remove-item', function() {
            $(this).closest('tr').remove();
            updateOrderTotal();
        });

        // Update row total when quantity or price changes
        $(document).on('change', '.item-qty, .item-price', function() {
            updateRowTotal($(this).closest('tr'));
            updateOrderTotal();
        });

        function updateRowTotal(row) {
            const qty = parseFloat(row.find('.item-qty').val()) || 0;
            const price = parseFloat(row.find('.item-price').val()) || 0;
            const total = (qty * price).toFixed(2);
            row.find('.item-total').text(total);
        }

        function updateOrderTotal() {
            let total = 0;
            $('.item-total').each(function() {
                total += parseFloat($(this).text()) || 0;
            });
            $('#orderTotal').text(total.toFixed(2));
        }
    });
</script>

<?php require_once '../../includes/footer.php'; ?>

