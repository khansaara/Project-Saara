-- a) Orders placed by a specific customer (e.g., Alice Smith)
SELECT o.ORDER_ID, p.PRODUCT_NAME, o.QUANTITY, o.ORDER_DATE
FROM Orders o
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID
JOIN Customers c ON o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE c.NAME = 'Alice Smith';

-- b) Products that are out of stock
SELECT PRODUCT_NAME
FROM Products
WHERE STOCK = 0;

-- c) Total revenue per product
SELECT p.PRODUCT_NAME, SUM(o.QUANTITY * p.PRICE) AS Total_Revenue
FROM Orders o
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY p.PRODUCT_NAME;

-- d) Top 5 customers by total purchase amount
SELECT c.NAME, SUM(o.QUANTITY * p.PRICE) AS Total_Spent
FROM Orders o
JOIN Customers c ON o.CUSTOMER_ID = c.CUSTOMER_ID
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY c.NAME
ORDER BY Total_Spent DESC
LIMIT 5;

-- e) Customers who ordered from at least 2 categories
SELECT c.NAME
FROM Orders o
JOIN Customers c ON o.CUSTOMER_ID = c.CUSTOMER_ID
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY c.NAME
HAVING COUNT(DISTINCT p.CATEGORY) >= 2;