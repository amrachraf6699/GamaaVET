<?php
require_once '../config/database.php';

$token = $_GET['token'] ?? '';

function renderMessage($text) {
    echo "<!doctype html><html lang='ar'><head><meta charset='utf-8'><title>بوابة العميل</title>
    <style>body{font-family:Arial,Helvetica,sans-serif;background:#f5f6fa;margin:0;padding:40px;}
    .card{background:#fff;border-radius:12px;box-shadow:0 10px 20px rgba(0,0,0,0.05);padding:30px;max-width:640px;margin:60px auto;text-align:center;}
    h1{margin-top:0;color:#0c3c60;}p{color:#555;line-height:1.6;}</style></head><body>
    <div class='card'><h1>بوابة العميل</h1><p>{$text}</p></div></body></html>";
    exit;
}

if (empty($token)) {
    renderMessage('رابط غير صالح. يرجى التواصل مع مسئول الحساب.');
}

$stmt = $pdo->prepare("SELECT c.*, f.name AS factory_name, f.contact_person, f.contact_phone, f.whatsapp_number
                       FROM customers c
                       LEFT JOIN factories f ON c.factory_id = f.id
                       WHERE c.portal_token = ?
                       LIMIT 1");
$stmt->execute([$token]);
$customer = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$customer) {
    renderMessage('لم يتم العثور على العميل لهذا الرابط.');
}

if (!empty($customer['portal_token_expires']) && strtotime($customer['portal_token_expires']) < time()) {
    renderMessage('انتهت صلاحية الرابط. يرجى طلب رابط جديد.');
}

$customerId = (int)$customer['id'];

$ordersStmt = $pdo->prepare("SELECT internal_id, status, total_amount, paid_amount, order_date
                             FROM orders
                             WHERE customer_id = ?
                             ORDER BY order_date DESC
                             LIMIT 10");
$ordersStmt->execute([$customerId]);
$orders = $ordersStmt->fetchAll(PDO::FETCH_ASSOC);

$walletStmt = $pdo->prepare("SELECT amount, type, notes, created_at
                             FROM customer_wallet_transactions
                             WHERE customer_id = ?
                             ORDER BY created_at DESC
                             LIMIT 8");
$walletStmt->execute([$customerId]);
$walletMoves = $walletStmt->fetchAll(PDO::FETCH_ASSOC);

$inventoryStmt = $pdo->prepare("SELECT p.name, SUM(ip.quantity) AS qty
                                FROM products p
                                JOIN inventory_products ip ON ip.product_id = p.id
                                WHERE p.customer_id = ?
                                GROUP BY p.id, p.name
                                ORDER BY p.name");
$inventoryStmt->execute([$customerId]);
$inventoryLines = $inventoryStmt->fetchAll(PDO::FETCH_ASSOC);

$balanceStmt = $pdo->prepare("SELECT SUM(total_amount - paid_amount) AS due
                              FROM orders
                              WHERE customer_id = ?");
$balanceStmt->execute([$customerId]);
$balanceRow = $balanceStmt->fetch(PDO::FETCH_ASSOC);
$dueAmount = $balanceRow && $balanceRow['due'] ? (float)$balanceRow['due'] : 0;

?><!doctype html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8">
    <title>بوابة العميل - <?= htmlspecialchars($customer['name']) ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body { font-family: 'Cairo', sans-serif; }
        .status { @apply text-white text-xs font-semibold px-3 py-1 rounded-full; }
        .status-default { background-color: #94a3b8; }
        .status-new { background-color: #6366f1; }
        .status-delivered { background-color: #16a34a; }
        .status-delivering { background-color: #f97316; }
        .status-returned { background-color: #dc2626; }
    </style>
</head>
<body class="bg-slate-100 py-10 px-4 sm:px-8">
    <div class="max-w-6xl mx-auto space-y-6">
        <div class="bg-gradient-to-r from-cyan-600 to-blue-700 rounded-3xl text-white p-8 shadow-2xl">
            <h1 class="text-3xl font-bold mb-3">أهلاً <?= htmlspecialchars($customer['name']); ?></h1>
            <p class="text-cyan-100 mb-6">يمكنك متابعة طلباتك والمدفوعات والمخزون الخاص بك من هذه الصفحة.</p>
            <div class="grid gap-5 md:grid-cols-3">
                <div class="bg-white/10 rounded-2xl p-5 backdrop-blur">
                    <p class="text-sm text-cyan-100 mb-2">الرصيد المستحق</p>
                    <p class="text-3xl font-semibold"><?= number_format($dueAmount, 2); ?> EGP</p>
                </div>
                <div class="bg-white/10 rounded-2xl p-5 backdrop-blur">
                    <p class="text-sm text-cyan-100 mb-2">رصيد المحفظة</p>
                    <p class="text-3xl font-semibold"><?= number_format($customer['wallet_balance'], 2); ?> EGP</p>
                </div>
                <div class="bg-white/10 rounded-2xl p-5 backdrop-blur">
                    <p class="text-sm text-cyan-100 mb-2">آخر طلب</p>
                    <p class="text-3xl font-semibold"><?= !empty($orders) ? date('Y-m-d', strtotime($orders[0]['order_date'])) : 'لا يوجد'; ?></p>
                </div>
            </div>
        </div>

        <div class="bg-white rounded-2xl shadow-lg p-6">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-12 h-12 rounded-full bg-indigo-100 text-indigo-600 flex items-center justify-center text-xl">
                    <i class="bx bx-buildings text-2xl"></i>
                </div>
                <h2 class="text-xl font-semibold text-slate-800">بيانات المصنع</h2>
            </div>
            <?php if (!empty($customer['factory_name'])): ?>
                <div class="grid gap-4 sm:grid-cols-3">
                    <p><span class="text-slate-500">المصنع:</span> <span class="font-semibold text-slate-800"><?= htmlspecialchars($customer['factory_name']); ?></span></p>
                    <?php if (!empty($customer['contact_person'])): ?>
                        <p><span class="text-slate-500">مسؤول المصنع:</span> <span class="font-semibold text-slate-800"><?= htmlspecialchars($customer['contact_person']); ?></span></p>
                    <?php endif; ?>
                    <?php if (!empty($customer['contact_phone'])): ?>
                        <p><span class="text-slate-500">هاتف المصنع:</span> <span class="font-semibold text-slate-800"><?= htmlspecialchars($customer['contact_phone']); ?></span></p>
                    <?php endif; ?>
                </div>
            <?php else: ?>
                <p class="text-slate-500">لم يتم ربط العميل بأي مصنع حتى الآن.</p>
            <?php endif; ?>
        </div>

        <div class="bg-white rounded-2xl shadow-lg p-6">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-12 h-12 rounded-full bg-blue-100 text-blue-600 flex items-center justify-center text-xl">
                    <i class="bx bx-receipt text-2xl"></i>
                </div>
                <h2 class="text-xl font-semibold text-slate-800">أحدث الطلبات</h2>
            </div>
            <?php if ($orders): ?>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-slate-100 text-sm">
                        <thead class="bg-slate-50 text-slate-600">
                            <tr>
                                <th class="px-4 py-3 text-right">رقم الطلب</th>
                                <th class="px-4 py-3 text-right">التاريخ</th>
                                <th class="px-4 py-3 text-right">الحالة</th>
                                <th class="px-4 py-3 text-right">الإجمالي</th>
                                <th class="px-4 py-3 text-right">المدفوع</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-slate-100">
                            <?php foreach ($orders as $order): ?>
                                <?php $statusClass = 'status-' . (!empty($order['status']) ? preg_replace('/[^a-z\-]/', '', strtolower($order['status'])) : 'default'); ?>
                                <tr class="hover:bg-slate-50">
                                    <td class="px-4 py-3 font-semibold text-slate-800"><?= htmlspecialchars($order['internal_id']); ?></td>
                                    <td class="px-4 py-3 text-slate-600"><?= date('Y-m-d', strtotime($order['order_date'])); ?></td>
                                    <td class="px-4 py-3">
                                        <span class="<?= $statusClass; ?> inline-flex items-center gap-1">
                                            <?= str_replace('-', ' ', $order['status']); ?>
                                        </span>
                                    </td>
                                    <td class="px-4 py-3 text-slate-800"><?= number_format($order['total_amount'], 2); ?> EGP</td>
                                    <td class="px-4 py-3 text-slate-800"><?= number_format($order['paid_amount'], 2); ?> EGP</td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php else: ?>
                <p class="text-slate-500">لا توجد طلبات حالياً.</p>
            <?php endif; ?>
        </div>

        <div class="grid gap-6 md:grid-cols-2">
            <div class="bg-white rounded-2xl shadow-lg p-6">
                <div class="flex items-center gap-3 mb-4">
                <div class="w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 flex items-center justify-center text-xl">
                    <i class="bx bx-wallet text-2xl"></i>
                    </div>
                    <h2 class="text-xl font-semibold text-slate-800">حركة المحفظة</h2>
                </div>
                <?php if ($walletMoves): ?>
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-slate-100 text-sm">
                            <thead class="bg-slate-50 text-slate-600">
                                <tr>
                                    <th class="px-4 py-3 text-right">التاريخ</th>
                                    <th class="px-4 py-3 text-right">النوع</th>
                                    <th class="px-4 py-3 text-right">القيمة</th>
                                    <th class="px-4 py-3 text-right">ملاحظات</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-slate-100">
                                <?php foreach ($walletMoves as $move): ?>
                                    <tr class="hover:bg-slate-50">
                                        <td class="px-4 py-3"><?= date('Y-m-d', strtotime($move['created_at'])); ?></td>
                                        <td class="px-4 py-3 capitalize"><?= htmlspecialchars($move['type']); ?></td>
                                        <td class="px-4 py-3 font-semibold text-slate-800"><?= number_format($move['amount'], 2); ?> EGP</td>
                                        <td class="px-4 py-3 text-slate-600"><?= htmlspecialchars($move['notes']); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                <?php else: ?>
                    <p class="text-slate-500">لا توجد حركات محفظة مسجلة.</p>
                <?php endif; ?>
            </div>

            <div class="bg-white rounded-2xl shadow-lg p-6">
                <div class="flex items-center gap-3 mb-4">
                <div class="w-12 h-12 rounded-full bg-amber-100 text-amber-600 flex items-center justify-center text-xl">
                    <i class="bx bx-package text-2xl"></i>
                    </div>
                    <h2 class="text-xl font-semibold text-slate-800">رصيد المخزون المرتبط</h2>
                </div>
                <?php if ($inventoryLines): ?>
                    <div class="divide-y divide-slate-100 text-sm">
                        <?php foreach ($inventoryLines as $line): ?>
                            <div class="flex items-center justify-between py-3">
                                <span class="text-slate-700"><?= htmlspecialchars($line['name']); ?></span>
                                <span class="font-bold text-slate-900"><?= number_format($line['qty']); ?></span>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php else: ?>
                    <p class="text-slate-500">لا يوجد مخزون مرتبط بك حالياً.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html>
