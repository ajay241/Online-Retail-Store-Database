--  Sample data insertion scripts.

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 999.99, 50),
('Smartphone', 'Electronics', 499.99, 100),
('Headphones', 'Accessories', 199.99, 200),
('Coffee Maker', 'Home Appliances', 79.99, 30),
('Desk Chair', 'Furniture', 149.99, 20);

INSERT INTO Customers (first_name, last_name, email, phone, address) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7890', '123 Elm St, Springfield'),
('Bob', 'Smith', 'bob.smith@example.com', '234-567-8901', '456 Oak St, Springfield'),
('Charlie', 'Brown', 'charlie.brown@example.com', '345-678-9012', '789 Pine St, Springfield');

INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2023-01-15 10:00:00', 'Shipped'),
(2, '2023-01-16 11:30:00', 'Pending'),
(1, '2023-01-17 14:00:00', 'Delivered');

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 4, 1),
(3, 5, 1);

INSERT INTO Payments (order_id, payment_date, amount, payment_method) VALUES
(1, '2023-01-15 10:05:00', 1399.97, 'Credit Card'),
(2, '2023-01-16 11:35:00', 499.99, 'PayPal'),
(3, '2023-01-17 14:05:00', 329.98, 'Credit Card');
