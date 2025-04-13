# Bookstore Database Project

## Overview
This project implements a MySQL database for a Kenyan bookstore, designed and developed by **Lucky Nakola**, **Joyce Solosi**, and **Vanessa Muthoni** as part of the Power Learn Project for Database Design & Programming with SQL. The database manages books, customers, orders, and related entities with a focus on an African context, featuring publishers like Longhorn Publishers, authors like Ngũgĩ wa Thiong'o, and locations like Nairobi. It includes:

- **15 tables** with appropriate relationships and constraints.
- **Sample data** reflecting Kenyan and African themes (e.g., books priced in KES, customer Amina Kamau).
- **User roles** for admin and employee access.
- **Entity-Relationship Diagram (ERD)** visualizing the schema.
- **Test queries** demonstrating functionality.
- **Comprehensive testing** to ensure reliability.
- **GitHub repository** showcasing collaborative development.

**Repository**: [https://github.com/WAIYAH/bookstore-database](https://github.com/WAIYAH/bookstore-database)  
**Submission Date**: April 13, 2025, 11:59 pm EAT

---

## Database Schema
The database (`bookstore`) consists of 15 tables, divided into three main categories: books, customers, and orders. Below is a summary of the tables and their relationships:

### Book-Related Tables
- **`book`**: Stores book details (title, ISBN, price in KES).
- **`book_author`**: Links books to authors (many-to-many).
- **`author`**: Stores author names (e.g., Chimamanda Ngozi Adichie).
- **`book_language`**: Stores languages (e.g., Swahili, English).
- **`publisher`**: Stores publishers (e.g., East African Publishers).

### Customer-Related Tables
- **`customer`**: Stores customer details (first name, last name, email).
- **`customer_address`**: Links customers to addresses (many-to-many).
- **`address`**: Stores address details (street, city).
- **`address_status`**: Stores address types (e.g., Current, Shipping).
- **`country`**: Stores countries (e.g., Kenya, Nigeria).

### Order-Related Tables
- **`cust_order`**: Stores customer orders (order date, status).
- **`order_line`**: Stores order items (book, quantity, price).
- **`shipping_method`**: Stores shipping options (e.g., Standard Delivery, KES 300).
- **`order_history`**: Tracks order status changes.
- **`order_status`**: Stores order statuses (e.g., Pending, Delivered).

**Key Features**:
- **Primary and Foreign Keys**: Ensure data integrity (e.g., `book_id` links `book` to `order_line`).
- **Constraints**: Enforce uniqueness (e.g., `isbn` in `book`) and valid data (e.g., `NOT NULL` for `title`).
- **Kenyan Context**: Includes African authors, publishers, and addresses (e.g., Kenyatta Avenue, Nairobi).

The full schema is in `sql/create_tables.sql`.

---

## Entity-Relationship Diagram (ERD)
The ERD visualizes the database structure, showing relationships between tables (e.g., `customer` to `cust_order` via `customer_id`). It was created using Draw.io and is available in two formats:

- `diagrams/bookstore_erd.drawio`: Editable source file.
- `diagrams/bookstore_erd.png`: Image for quick reference.

**Highlights**:
- Many-to-many relationships (e.g., `book_author`, `customer_address`).
- One-to-many relationships (e.g., `publisher` to `book`).
- Clear Kenyan context (e.g., tables support KES prices, Nairobi addresses).

---

## Setup Instructions
To set up the database locally:

1. **Prerequisites**:
   - MySQL Server (version 8.0 or later).
   - Git (to clone the repository).
   - Draw.io (optional, to view/edit ERD).

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/WAIYAH/bookstore-database.git
   cd bookstore-database