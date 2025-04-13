-- Lucky: Query 1: Total order value per customer
SELECT c.first_name, c.last_name, SUM(ol.quantity * ol.price) AS total_spent
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
GROUP BY c.customer_id;

-- Lucky: Query 2: Books by publisher
SELECT p.publisher_name, b.title
FROM publisher p
JOIN book b ON p.publisher_id = b.publisher_id
WHERE p.publisher_name = 'Longhorn Publishers';

