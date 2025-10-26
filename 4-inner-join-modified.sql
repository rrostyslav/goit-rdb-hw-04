USE hw3;

SELECT
  COUNT(*) AS total_records
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
LEFT JOIN products p ON od.product_id = p.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN categories cat ON p.category_id = cat.id
RIGHT JOIN customers c ON o.customer_id = c.id
LEFT JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id;
