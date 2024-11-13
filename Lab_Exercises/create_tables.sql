
SELECT * FROM customers;
-- Customer Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    join_date DATE NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Suppliers Table
CREATE TABLE suppliers (
	supplier_name VARCHAR(50) NOT NULL,
	supplier_address VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contact_number VARCHAR(20) NOT NULL,
    fax VARCHAR(20),
    account_number VARCHAR(20) NOT NULL,
    order_history INTEGER NOT NULL,
    contract BOOLEAN NOT NULL,
    supplier_country VARCHAR(50) NOT NULL,
    supplier_city VARCHAR(50) NOT NULL,
    country_code VARCHAR(5) NOT NULL
);

-- Inventory Table
CREATE TABLE inventory (
	product_name VARCHAR(50) NOT NULL,
	stock_quantity INTEGER NOT NULL,
	stock_date DATE NOT NULL,
	supplier VARCHAR(100) NOT NULL,
	warehouse_location VARCHAR(50)
);
 
-- Orders Table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_revenue DECIMAL(10, 2) NOT NULL,
    year SMALLINT NOT NULL,
    month SMALLINT NOT NULL,
    day SMALLINT NOT NULL,
);

-- Order Items Table
CREATE TABLE order_items (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
	quantity INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
);



