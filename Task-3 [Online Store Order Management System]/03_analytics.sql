-- a) Month with highest total sales
SELECT TO_CHAR(ORDER_DATE, 'YYYY-MM') AS Month, SUM(o.QUANTITY * p.PRICE) AS Total_Sales
FROM Orders o
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY Month
ORDER BY Total_Sales DESC
LIMIT 1;

-- b) Products with no orders in the last 6 months
SELECT PRODUCT_NAME
FROM Products
WHERE PRODUCT_ID NOT IN (
  SELECT PRODUCT_ID
  FROM Orders
  WHERE ORDER_DATE >= CURRENT_DATE - INTERVAL '6 months'
);

-- c) Customers who never placed an order
SELECT NAME
FROM Customers
WHERE CUSTOMER_ID NOT IN (
  SELECT DISTINCT CUSTOMER_ID FROM Orders
);

-- d) Average order value
SELECT AVG(o.QUANTITY * p.PRICE) AS Average_Order_Value
FROM Orders o
JOIN Products p ON o.PRODUCT_ID = p.PRODUCT_ID;