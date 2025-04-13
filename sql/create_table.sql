CREATE TABLE shipping_method (
shipping_method_id INT PRIMARY KEY AUTO_INCREMENT,
method_name VARCHAR(50) NOT NULL,
cost DECIMAL(10,2)
);

CREATE TABLE order_status (
status_id INT PRIMARY KEY AUTO_INCREMENT,
status_name VARCHAR(50) NOT NULL
);


CREATE TABLE cust_order (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATE NOT NULL,
shipping_method_id INT,
status_id INT,
FOREIGN KEY (customer_id) REFERENCES
customer(customer_id),
FOREIGN KEY (shipping_method_id) REFERENCES
shipping_method(shipping_method_id),
FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);


CREATE TABLE order_line (
order_id INT,
book_id INT,
quantity INT NOT NULL,
price DECIMAL(10,2) NOT NULL,
PRIMARY KEY (order_id, book_id),
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
FOREIGN KEY (book_id) REFERENCES book(book_id)
);


CREATE TABLE order_history (
history_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
status_id INT,
status_date DATE NOT NULL,
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);