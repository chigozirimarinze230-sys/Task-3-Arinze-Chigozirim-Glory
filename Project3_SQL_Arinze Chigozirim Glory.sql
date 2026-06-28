USE DecodeLabs
GO

SELECT * FROM EcommerceData

SELECT OrderID, Product, Quantity, UnitPrice, TotalPrice 
FROM EcommerceData

--- Query 2: Filter Deliverd orders
SELECT OrderID, Product, OrderStatus, 
ROUND(TotalPrice, 2) AS TotalPrice
FROM EcommerceData
WHERE OrderStatus = 'Delivered'

--- Query 3: How many orders does each product have ?
SELECT Product, COUNT(*) AS TotalOrders
FROM EcommerceData
GROUP BY Product
ORDER BY TotalOrders Desc

--- Query 4: Total Revenue from Orders
SELECT SUM(ROUND(TotalPrice, 2)) AS TotalRevenue
FROM EcommerceData

--- Query 5: What is the averge amount spent per order ?
SELECT ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM EcommerceData

--- Query 6: Which product generates the most revenue?
SELECT Product,
ROUND(SUM(TotalPrice), 2) AS TotalRevenue
FROM EcommerceData
GROUP BY Product
ORDER BY TotalRevenue DESC 

--- Query 7: Which payment method do customer use the most?
SELECT PaymentMethod, COUNT(*) AS TotalOrders
FROM EcommerceData
GROUP BY PaymentMethod
ORDER BY TotalOrders 

--- Query 8: What is the distribution of order statuses?
SELECT OrderStatus, COUNT(*) AS TotalOrders
FROM EcommerceData
GROUP BY OrderStatus
ORDER BY TotalOrders DESC