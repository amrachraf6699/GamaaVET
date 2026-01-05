<?php
require_once '../../includes/auth.php';
require_once '../../includes/functions.php';

$page_title = 'Analysis';
require_once '../../includes/header.php';

$cards = [
    [
        'key' => 'sales_summary',
        'title' => 'Sales Summary',
        'desc' => 'Monthly orders, sales, paid, and balance.',
        'group' => 'Sales',
        'icon' => 'fa-chart-line'
    ],
    [
        'key' => 'sales_by_product',
        'title' => 'Sales by Product',
        'desc' => 'Top products by quantity and revenue.',
        'group' => 'Sales',
        'icon' => 'fa-box'
    ],
    [
        'key' => 'top_customers',
        'title' => 'Top Customers',
        'desc' => 'Customers ranked by total sales.',
        'group' => 'Sales',
        'icon' => 'fa-users'
    ],
    [
        'key' => 'customer_balances',
        'title' => 'Customer Wallets',
        'desc' => 'Wallet balances by customer.',
        'group' => 'Finance',
        'icon' => 'fa-wallet'
    ],
    [
        'key' => 'inventory_levels',
        'title' => 'Inventory Levels',
        'desc' => 'Stock by inventory and product.',
        'group' => 'Inventory',
        'icon' => 'fa-warehouse'
    ],
    [
        'key' => 'low_stock',
        'title' => 'Low Stock',
        'desc' => 'Products below minimum stock.',
        'group' => 'Inventory',
        'icon' => 'fa-triangle-exclamation'
    ],
    [
        'key' => 'purchase_summary',
        'title' => 'Purchase Summary',
        'desc' => 'Monthly PO totals and balances.',
        'group' => 'Purchasing',
        'icon' => 'fa-basket-shopping'
    ],
    [
        'key' => 'vendor_balances',
        'title' => 'Vendor Wallets',
        'desc' => 'Wallet balances by vendor.',
        'group' => 'Purchasing',
        'icon' => 'fa-truck'
    ],
    [
        'key' => 'returns_summary',
        'title' => 'Returns Summary',
        'desc' => 'Returned quantities by product.',
        'group' => 'Operations',
        'icon' => 'fa-rotate-left'
    ],
    [
        'key' => 'product_margin',
        'title' => 'Product Margin',
        'desc' => 'Revenue, estimated cost, and margin by product.',
        'group' => 'Accounting',
        'icon' => 'fa-chart-pie'
    ],
    [
        'key' => 'ar_aging',
        'title' => 'Accounts Receivable Aging',
        'desc' => 'Outstanding balances grouped by aging buckets.',
        'group' => 'Accounting',
        'icon' => 'fa-file-invoice-dollar'
    ],
    [
        'key' => 'ap_aging',
        'title' => 'Accounts Payable Aging',
        'desc' => 'Vendor balances grouped by aging buckets.',
        'group' => 'Accounting',
        'icon' => 'fa-file-contract'
    ],
    [
        'key' => 'cashflow_summary',
        'title' => 'Cashflow Transfers',
        'desc' => 'Transfers between safes, banks, and personal.',
        'group' => 'Finance',
        'icon' => 'fa-right-left'
    ],
    [
        'key' => 'payments_by_method',
        'title' => 'Payments by Method',
        'desc' => 'Incoming and outgoing payments by method.',
        'group' => 'Finance',
        'icon' => 'fa-cash-register'
    ],
    [
        'key' => 'inventory_valuation',
        'title' => 'Inventory Valuation',
        'desc' => 'Estimated stock value by inventory.',
        'group' => 'Inventory',
        'icon' => 'fa-layer-group'
    ],
    [
        'key' => 'quotation_pipeline',
        'title' => 'Quotation Pipeline',
        'desc' => 'Quotation totals grouped by status.',
        'group' => 'Sales',
        'icon' => 'fa-file-invoice'
    ],
    [
        'key' => 'sales_by_category',
        'title' => 'Sales by Category',
        'desc' => 'Revenue and volume grouped by category.',
        'group' => 'Sales',
        'icon' => 'fa-layer-group'
    ],
    [
        'key' => 'sales_by_customer_type',
        'title' => 'Sales by Customer Type',
        'desc' => 'Sales split by customer type.',
        'group' => 'Sales',
        'icon' => 'fa-user-tag'
    ],
    [
        'key' => 'order_status_mix',
        'title' => 'Order Status Mix',
        'desc' => 'Orders grouped by status.',
        'group' => 'Sales',
        'icon' => 'fa-clipboard-check'
    ],
    [
        'key' => 'po_status_mix',
        'title' => 'PO Status Mix',
        'desc' => 'Purchase orders grouped by status.',
        'group' => 'Purchasing',
        'icon' => 'fa-list-check'
    ],
    [
        'key' => 'inventory_transfers_summary',
        'title' => 'Inventory Transfers',
        'desc' => 'Transfers volume by status and period.',
        'group' => 'Inventory',
        'icon' => 'fa-right-left'
    ],
    [
        'key' => 'cash_positions',
        'title' => 'Cash Positions',
        'desc' => 'Balances across safes, banks, and personal.',
        'group' => 'Finance',
        'icon' => 'fa-coins'
    ],
    [
        'key' => 'customer_wallet_activity',
        'title' => 'Customer Wallet Activity',
        'desc' => 'Wallet transactions by type and period.',
        'group' => 'Finance',
        'icon' => 'fa-wallet'
    ],
    [
        'key' => 'vendor_wallet_activity',
        'title' => 'Vendor Wallet Activity',
        'desc' => 'Vendor transactions by type and period.',
        'group' => 'Purchasing',
        'icon' => 'fa-money-bill-transfer'
    ],
];
$reportCount = count($cards);
$lastUpdated = date('M j, Y');
$groups = [
    'Sales',
    'Inventory',
    'Purchasing',
    'Finance',
    'Accounting',
    'Operations'
];
?>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap');
    :root{
        --analysis-ink:#0f172a;
        --analysis-slate:#475569;
        --analysis-soft:#e2e8f0;
        --analysis-brand:#0ea5e9;
        --analysis-accent:#f59e0b;
        --analysis-bg1:#f8fafc;
        --analysis-bg2:#eef2ff;
    }
    .analysis-shell{
        font-family:'Space Grotesk', system-ui, sans-serif;
        color:var(--analysis-ink);
    }
    .analysis-hero{
        background: linear-gradient(135deg, var(--analysis-bg2), #fef3c7 55%, var(--analysis-bg1));
        border:1px solid var(--analysis-soft);
        border-radius:18px;
        padding:28px;
        position:relative;
        overflow:hidden;
    }
    .analysis-hero::after{
        content:"";
        position:absolute;
        inset:0;
        background-image: radial-gradient(circle at 20% 20%, rgba(14,165,233,0.18), transparent 40%),
                          radial-gradient(circle at 80% 0%, rgba(245,158,11,0.18), transparent 45%);
        pointer-events:none;
    }
    .analysis-hero h2{font-size:28px;font-weight:700;margin-bottom:8px;}
    .analysis-hero p{color:var(--analysis-slate);margin-bottom:18px;}
    .analysis-kpi{
        display:flex;gap:16px;flex-wrap:wrap;
    }
    .analysis-kpi .kpi{
        background:#fff;border:1px solid var(--analysis-soft);
        border-radius:14px;padding:12px 16px;min-width:160px;
        box-shadow:0 6px 18px rgba(15,23,42,0.06);
    }
    .analysis-kpi .kpi .label{font-size:12px;color:var(--analysis-slate);text-transform:uppercase;letter-spacing:0.08em;}
    .analysis-kpi .kpi .value{font-size:20px;font-weight:600;margin-top:4px;}
    .analysis-grid .card{
        border-radius:16px;border:1px solid var(--analysis-soft);
        box-shadow:0 8px 20px rgba(15,23,42,0.06);
        transition:transform .2s ease, box-shadow .2s ease;
    }
    .analysis-grid .card:hover{
        transform:translateY(-4px);
        box-shadow:0 14px 30px rgba(15,23,42,0.12);
    }
    .analysis-card-icon{
        width:42px;height:42px;border-radius:12px;
        display:flex;align-items:center;justify-content:center;
        background:rgba(14,165,233,0.12);color:var(--analysis-brand);
        margin-bottom:12px;font-size:18px;
    }
    .analysis-chip{
        display:inline-flex;align-items:center;gap:6px;
        padding:4px 10px;border-radius:999px;
        background:rgba(15,23,42,0.06);color:var(--analysis-slate);
        font-size:12px;text-transform:uppercase;letter-spacing:0.06em;
    }
    .analysis-cta{
        background:var(--analysis-brand);
        border:none;
    }
    .analysis-cta:hover{background:#0284c7;}
</style>

<div class="analysis-shell">
    <div class="analysis-hero mb-4">
        <div class="position-relative">
            <h2>ERP + POS Intelligence Hub</h2>
            <p>One place to explore revenue, inventory health, returns, and cash movements. Filter, compare, and export reports with a single click.</p>
            <div class="analysis-kpi">
                <div class="kpi">
                    <div class="label">Available Reports</div>
                    <div class="value"><?= $reportCount ?></div>
                </div>
                <div class="kpi">
                    <div class="label">Last Updated</div>
                    <div class="value"><?= $lastUpdated ?></div>
                </div>
                <div class="kpi">
                    <div class="label">Exports</div>
                    <div class="value">CSV / PDF</div>
                </div>
            </div>
        </div>
    </div>

    <ul class="nav nav-tabs mb-3" role="tablist">
        <?php foreach ($groups as $index => $group): ?>
            <?php $tabId = 'tab-' . strtolower(str_replace(' ', '-', $group)); ?>
            <li class="nav-item" role="presentation">
                <button class="nav-link <?= $index === 0 ? 'active' : '' ?>" id="<?= $tabId ?>-tab" data-bs-toggle="tab" data-bs-target="#<?= $tabId ?>" type="button" role="tab">
                    <?= htmlspecialchars($group) ?>
                </button>
            </li>
        <?php endforeach; ?>
    </ul>

    <div class="tab-content">
        <?php foreach ($groups as $index => $group): ?>
            <?php $tabId = 'tab-' . strtolower(str_replace(' ', '-', $group)); ?>
            <div class="tab-pane fade <?= $index === 0 ? 'show active' : '' ?>" id="<?= $tabId ?>" role="tabpanel">
                <div class="analysis-grid row g-3">
                    <?php foreach ($cards as $card): ?>
                        <?php if ($card['group'] !== $group) continue; ?>
                        <div class="col-md-6 col-lg-4">
                            <div class="card h-100">
                                <div class="card-body d-flex flex-column">
                                    <div class="analysis-card-icon">
                                        <i class="fas <?= htmlspecialchars($card['icon']) ?>"></i>
                                    </div>
                                    <div class="analysis-chip mb-2"><?= htmlspecialchars($card['group']) ?></div>
                                    <h5 class="card-title"><?= htmlspecialchars($card['title']) ?></h5>
                                    <p class="card-text text-muted flex-grow-1"><?= htmlspecialchars($card['desc']) ?></p>
                                    <a href="report.php?key=<?= urlencode($card['key']) ?>" class="btn analysis-cta mt-2 text-white">
                                        View Report
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<?php require_once '../../includes/footer.php'; ?>
