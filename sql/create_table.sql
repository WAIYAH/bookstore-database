CREATE TABLE country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL
);
CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);
CREATE TABLE address_status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL
);
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

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