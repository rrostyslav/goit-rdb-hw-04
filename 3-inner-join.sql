USE hw3;

SELECT
  od.id AS order_detail_id,
  o.id AS order_id,
  o.date AS order_date,
  od.product_id,
  p.name AS product_name,
  p.unit AS product_unit,
  p.price AS product_price,
  od.quantity,
  p.supplier_id,
  s.name AS supplier_name,
  s.phone AS supplier_phone,
  p.category_id,
  cat.name AS category_name,
  o.customer_id,
  c.name AS customer_name,
  c.contact AS customer_contact,
  c.city AS customer_city,
  o.employee_id,
  e.first_name AS employee_first_name,
  e.last_name AS employee_last_name,
  o.shipper_id,
  sh.name AS shipper_name,
  sh.phone AS shipper_phone
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id;
