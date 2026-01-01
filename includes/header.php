<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($page_title) ? $page_title . ' | Gammavet System' : 'Gammavet System'; ?></title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Icon Libraries -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <!-- Select2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <!-- Select2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/style.css">
</head>

<body>
    <!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
    <div class="container-fluid px-4">

        <!-- Brand -->
        <a class="navbar-brand d-flex align-items-center gap-2 fw-semibold" href="<?= BASE_URL ?>dashboard.php">
            <img src="<?= BASE_URL ?>logo.png" alt="GammaVet" width="32" height="32">
            <span>GammaVet</span>
        </a>

        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar -->
        <div class="collapse navbar-collapse" id="mainNavbar">

            <!-- Left -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 gap-lg-1">

                <?php if (isLoggedIn()): ?>

                    <li class="nav-item">
                        <a class="nav-link" href="<?= BASE_URL ?>dashboard.php">
                            <i class="fas fa-gauge-high me-1"></i> Dashboard
                        </a>
                    </li>

                    <!-- Sales -->
                    <?php $canSales = hasPermission('sales.orders.view_all') || hasPermission('sales.orders.create') || hasPermission('quotations.manage') || hasPermission('customers.view'); ?>
                    <?php if ($canSales): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-cart-shopping me-1"></i> Sales
                        </a>
                        <ul class="dropdown-menu">
                            <?php if (hasPermission('sales.orders.view_all')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/sales/">
                                    <i class="fas fa-list me-2"></i> All Orders
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('sales.orders.create')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/sales/create_order.php">
                                    <i class="fas fa-plus me-2"></i> Create Order
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('quotations.manage')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/sales/quotations/quotation_list.php">
                                    <i class="fas fa-file-invoice me-2"></i> Quotations
                                </a>
                            </li>
                            <?php endif; ?>
                            <li><hr class="dropdown-divider"></li>
                            <?php if (hasPermission('customers.view')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/customers/">
                                    <i class="fas fa-users me-2"></i> Customers
                                </a>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </li>
                    <?php endif; ?>

                    <!-- Inventory -->
                    <?php $canInventory = hasPermission('inventories.view') || hasPermission('inventories.create') || hasPermission('inventories.transfer'); ?>
                    <?php if ($canInventory): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-warehouse me-1"></i> Inventory
                        </a>
                        <ul class="dropdown-menu">
                            <?php if (hasPermission('inventories.view')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/inventories/">
                                    <i class="fas fa-list me-2"></i> All Inventories
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('inventories.create')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/inventories/create.php">
                                    <i class="fas fa-plus me-2"></i> Add Inventory
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('inventories.transfer')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/inventories/transfer.php">
                                    <i class="fas fa-right-left me-2"></i> Transfer Items
                                </a>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </li>
                    <?php endif; ?>

                    <!-- Products -->
                    <?php $canProducts = hasPermission('products.view') || hasPermission('products.create') || hasPermission('products.bulk_upload') || hasPermission('categories.manage'); ?>
                    <?php if ($canProducts): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-boxes-stacked me-1"></i> Products
                        </a>
                        <ul class="dropdown-menu">
                            <?php if (hasPermission('products.view')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/products/">
                                    <i class="fas fa-list me-2"></i> All Products
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('products.create')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/products/create.php">
                                    <i class="fas fa-plus me-2"></i> Add Product
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('products.bulk_upload')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/products/upload.php">
                                    <i class="fas fa-upload me-2"></i> Bulk Upload
                                </a>
                            </li>
                            <?php endif; ?>
                            <li><hr class="dropdown-divider"></li>
                            <?php if (hasPermission('categories.manage')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/categories/">
                                    <i class="fas fa-tags me-2"></i> Categories
                                </a>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </li>
                    <?php endif; ?>

                    <!-- Purchases -->
                    <?php $canPurchases = hasPermission('purchases.view_all') || hasPermission('purchases.create') || hasPermission('vendors.view'); ?>
                    <?php if ($canPurchases): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-basket-shopping me-1"></i> Purchases
                        </a>
                        <ul class="dropdown-menu">
                            <?php if (hasPermission('purchases.view_all')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/purchases/">
                                    <i class="fas fa-list me-2"></i> Purchase Orders
                                </a>
                            </li>
                            <?php endif; ?>
                            <?php if (hasPermission('purchases.create')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/purchases/create_po.php">
                                    <i class="fas fa-plus me-2"></i> Create PO
                                </a>
                            </li>
                            <?php endif; ?>
                            <li><hr class="dropdown-divider"></li>
                            <?php if (hasPermission('vendors.view')): ?>
                            <li>
                                <a class="dropdown-item" href="<?= BASE_URL ?>modules/vendors/">
                                    <i class="fas fa-truck me-2"></i> Vendors
                                </a>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </li>
                    <?php endif; ?>

                    <!-- Users -->
                    <?php if (hasPermission('users.manage')): ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= BASE_URL ?>modules/users/">
                            <i class="fas fa-users me-1"></i> Users
                        </a>
                    </li>
                    <?php endif; ?>

                <?php endif; ?>

                <!-- Finance -->
                <?php 
                    $canFinance = hasPermission('finance.customer_wallet.view') 
                        || hasPermission('finance.customer_payment.process')
                        || hasPermission('finance.safes.create')
                        || hasPermission('finance.bank_accounts.create')
                        || hasPermission('finance.personal_accounts.create')
                        || hasPermission('finance.transfers.create')
                        || hasPermission('finance.po_payment.process')
                        || hasPermission('finance.vendor_wallet.view');
                ?>
                <?php if ($canFinance): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-coins me-1"></i> Finance
                        </a>
                        <ul class="dropdown-menu">
                            <?php if (hasPermission('finance.customer_wallet.view')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/customers.php"><i class="fas fa-wallet me-2"></i> Customer Wallets</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.customer_payment.process')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/bills.php"><i class="fas fa-file-invoice-dollar me-2"></i> Bills & Payments</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.safes.create')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/safes.php"><i class="fas fa-vault me-2"></i> Safes</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.bank_accounts.create')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/banks.php"><i class="fas fa-university me-2"></i> Bank Accounts</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.personal_accounts.create')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/personal.php"><i class="fas fa-user-shield me-2"></i> Personal Accounts</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.transfers.create')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/transfers.php"><i class="fas fa-right-left me-2"></i> Transfers</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.po_payment.process')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/po.php"><i class="fas fa-file-contract me-2"></i> PO Payments</a></li>
                            <?php endif; ?>
                            <?php if (hasPermission('finance.vendor_wallet.view')): ?>
                                <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/finance/vendors.php"><i class="fas fa-truck-field me-2"></i> Vendor Wallets</a></li>
                            <?php endif; ?>
                        </ul>
                    </li>
                <?php endif; ?>

            </ul>

            <!-- Right -->
            <ul class="navbar-nav ms-auto">
                <?php if (isLoggedIn()): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle d-flex align-items-center gap-1" href="#" data-bs-toggle="dropdown">
                            <i class="fas fa-user-circle fs-5"></i>
                            <span><?= $_SESSION['user_name'] ?></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="<?= BASE_URL ?>modules/users/profile.php"><i class="fas fa-user me-2"></i> Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-cog me-2"></i> Settings</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li>
                                <a class="dropdown-item text-danger" href="<?= BASE_URL ?>logout.php?logout">
                                    <i class="fas fa-sign-out-alt me-2"></i> Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                <?php endif; ?>
            </ul>

        </div>
    </div>
</nav>


    <div class="container mt-4">
        <?php displayAlert(); ?>
