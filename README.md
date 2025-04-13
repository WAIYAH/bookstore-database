# Bookstore Database Project

## Overview
This project creates a MySQL database for a Kenyan bookstore, managing books, customers, and orders. It includes 15 tables, sample data, user roles, and queries.

## Schema
- Books: `book`, `book_author`, `author`, `book_language`, `publisher`.
- Customers: `customer`, `customer_address`, `address`, `address_status`, `country`.
- Orders: `cust_order`, `order_line`, `shipping_method`, `order_history`, `order_status`.

## Setup
```bash
mysql -u your_username -p < sql/create_database.sql
mysql -u your_username -p < sql/create_tables.sql
mysql -u your_username -p < sql/insert_data.sql
