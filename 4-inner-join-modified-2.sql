USE hw3;

SELECT
  cat.name, 
  COUNT(cat.name) AS records_in_group,
  AVG(od.quantity) AS average_ordered_quantity
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE o.employee_id > 3 AND o.employee_id <= 10
GROUP BY cat.name 
HAVING average_ordered_quantity > 21
ORDER BY average_ordered_quantity DESC
LIMIT 4 OFFSET 1;
