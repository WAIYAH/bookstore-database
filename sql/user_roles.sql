

USE bookstore;

CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY 'AdminKipepeo2025!';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin'@'localhost';

CREATE USER 'bookstore_employee'@'localhost' IDENTIFIED BY 'Maktaba123!';
GRANT SELECT, INSERT, UPDATE ON bookstore.* TO 'bookstore_employee'@'localhost';

FLUSH PRIVILEGES;
