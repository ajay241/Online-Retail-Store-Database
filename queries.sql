-- All analytical queries 

-- Verify the data
SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Order_Items;
SELECT * FROM Payments;


-- Retrieve a list of all products with their stock status
SELECT product_name, stock_quantity, 
       CASE 
           WHEN stock_quantity > 0 THEN 'In Stock' 
           ELSE 'Out of Stock' 
       END AS stock_status
FROM Products;

-- Find the total sales for each product
SELECT p.product_name, SUM(oi.quantity) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- Get the top 5 customers by total spending
SELECT c.first_name, c.last_name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- List all orders with customer details and order status
SELECT o.customer_id, c.first_name, c.last_name, o.status, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- Calculate the total revenue generated in a specific time period
SELECT SUM(amount) AS total_revenue
FROM Payments
WHERE payment_date BETWEEN '2023-01-01' AND '2023-01-31';
