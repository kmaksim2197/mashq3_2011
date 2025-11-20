SELECT SUM(total_amount)
FROM orders
WHERE status = 'delivered'
  AND created_at LIKE '2024-09%';

SELECT payment_type, COUNT(*) AS order_count, AVG(total_amount) AS avg_amount
FROM orders
GROUP BY payment_type;

SELECT *
FROM orders
WHERE total_amount > 5000000
  AND payment_status = 'paid'
ORDER BY created_at;

SELECT COUNT(*)
FROM orders
WHERE city = 'Toshkent'
  AND status != 'cancelled';

SELECT id, total_amount, discount_amount
FROM orders
ORDER BY discount_amount DESC
LIMIT 10;

SELECT id, status
FROM orders
WHERE created_at > '2024-10-01'
  AND status IN ('pending', 'confirmed');
