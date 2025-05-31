-- Insert customers
INSERT INTO Customers (NAME, EMAIL, PHONE, ADDRESS) VALUES
('Alice Smith', 'alice@example.com', '1111111111', '123 Main St'),
('Bob Johnson', 'bob@example.com', '2222222222', '456 Oak St'),
('Charlie Lee', 'charlie@example.com', '3333333333', '789 Pine St'),
('Diana Ross', 'diana@example.com', '4444444444', '321 Maple Ave'),
('Ethan Hunt', 'ethan@example.com', '5555555555', '654 Elm St');

-- Insert products
INSERT INTO Products (PRODUCT_NAME, CATEGORY, PRICE, STOCK) VALUES
('Laptop', 'Electronics', 1200, 10),
('Phone', 'Electronics', 800, 0),
('Desk Chair', 'Furniture', 150, 5),
('Notebook', 'Stationery', 5, 100),
('Pen Set', 'Stationery', 10, 50),
('Bookshelf', 'Furniture', 200, 3);

-- Insert orders
INSERT INTO Orders (CUSTOMER_ID, PRODUCT_ID, QUANTITY, ORDER_DATE) VALUES
(1, 1, 1, '2024-11-15'),
(2, 2, 1, '2025-01-20'),
(1, 3, 2, '2025-02-05'),
(3, 4, 10, '2025-03-10'),
(3, 5, 5, '2025-04-01'),
(4, 1, 1, '2025-04-10'),
(5, 6, 2, '2024-09-12');
