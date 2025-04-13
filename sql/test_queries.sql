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

-- Joyce: Query 3: Customer orders with book details
SELECT co.order_id, co.order_date, c.first_name, b.title, ol.quantity
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id
WHERE c.email = 'amina.kamau@gmail.com';

-- Joyce: Query 4: Authors and their books
SELECT a.author_name, b.title
FROM author a
JOIN book_author ba ON a.author_id = ba.author_id
JOIN book b ON ba.book_id = b.book_id
WHERE a.author_name = 'Ngũgĩ wa Thiong''o';


-- Vanessa: Query 5: Swahili books
SELECT b.title, bl.language_name
FROM book b
JOIN book_language bl ON b.language_id = bl.language_id
WHERE bl.language_name = 'Swahili';