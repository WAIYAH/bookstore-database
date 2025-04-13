<<<<<<< HEAD
INSERT INTO book_language (language_name) VALUES
('English'), ('Swahili'), ('French'), ('Amharic'), ('Yoruba');

INSERT INTO publisher (publisher_name) VALUES
('East African Publishers'), ('Longhorn Publishers'), ('Moran Publishers'),
('Cassava Republic Press'), ('Jacaranda Publishers');

INSERT INTO author (author_name) VALUES
('Ngũgĩ wa Thiong''o'), ('Chimamanda Ngozi Adichie'), ('Binyavanga Wainaina'),
('Wanjiku wa Ngugi'), ('Yaa Gyasi');

INSERT INTO book (title, isbn, publisher_id, language_id, price) VALUES
('Decolonising the Mind', '9789966466846', 1, 1, 1500.00),
('Weep Not, Child', '9789966460073', 2, 1, 1200.00),
('Half of a Yellow Sun', '9789785460926', 4, 1, 2000.00),
('Malaika wa Mbinguni', '9789966001238', 3, 2, 1000.00),
('Homegoing', '9780241975237', 5, 1, 1800.00);

INSERT INTO book_author (book_id, author_id) VALUES
(1, 1), (2, 1), (3, 2), (4, 3), (5, 5);

=======

INSERT INTO shipping_method (method_name, cost) VALUES
(‘Standard Delivery’, 300.00), (‘Express Delivery’, 800.00),
(‘Pickup in Store’, 0.00), (‘Regional Courier’, 500.00),
(‘International Shipping’, 2000.00);

INSERT INTO order_status (status_name) VALUES
(‘Pending’), (‘Processing’), (‘Shipped’), (‘Delivered’), (‘Cancelled’);

INSERT INTO cust_order (customer_id, order_date,
shipping_method_id, status_id) VALUES
(1, ‘2025-04-01’, 1, 1), (2, ‘2025-04-02’, 3, 4),
(3, ‘2025-04-03’, 2, 3), (4, ‘2025-04-04’, 4, 2),
(5, ‘2025-04-05’, 1, 5);

INSERT INTO order_line (order_id, book_id, quantity, price)
VALUES
(1, 1, 2, 1500.00), (1, 4, 1, 1000.00), (2, 2, 1, 1200.00),
(3, 3, 3, 2000.00), (4, 5, 1, 1800.00);

INSERT INTO order_history (order_id, status_id, status_date)
VALUES
(1, 1, ‘2025-04-01’), (2, 1, ‘2025-04-02’), (2, 4, ‘2025-04-03’),
(3, 1, ‘2025-04-03’), (3, 3, ‘2025-04-04’);
>>>>>>> 937328434e754f668ba9d4fd82c7f0c3c9f7eb0b
