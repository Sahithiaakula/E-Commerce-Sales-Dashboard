CREATE DATABASE ecommerce_db;
USE ecommerce_db;

SELECT * FROM superstore LIMIT 10;

-- Query 1: Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- Query 2: Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- Query 3: Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- Query 4: Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 5: Profit by Region
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Query 6: Top 10 Customers by Sales
SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 7: Top 10 Products by Sales
SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 8: Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 9: Sales by Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Query 10: Profit by Category
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Query 11: Profit by Segment
SELECT Segment,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- Query 12: Sales by State
SELECT State,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;

-- Query 13: Top 10 States by Sales
SELECT State,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 14: Top 10 Cities by Sales
SELECT City,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 15: Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore;

-- Query 16: Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM superstore;

-- Query 17: Average Profit
SELECT ROUND(AVG(Profit),2) AS Average_Profit
FROM superstore;

-- Query 18: Average Discount by Category
SELECT Category,
       ROUND(AVG(Discount),2) AS Average_Discount
FROM superstore
GROUP BY Category
ORDER BY Average_Discount DESC;

-- Query 19: Top 10 Most Profitable Products
SELECT `Product Name`,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 20: Bottom 10 Products by Profit
SELECT `Product Name`,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;

-- Query 21: Average Sales by Category
SELECT Category,
       ROUND(AVG(Sales),2) AS Average_Sales
FROM superstore
GROUP BY Category
ORDER BY Average_Sales DESC;

-- Query 22: Total Sales by Ship Mode
SELECT `Ship Mode`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

-- Query 23: Total Profit by Ship Mode
SELECT `Ship Mode`,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Profit DESC;

-- Query 24: Top 10 Customers by Profit
SELECT `Customer Name`,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 25: Bottom 10 Customers by Profit
SELECT `Customer Name`,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit ASC
LIMIT 10;

-- Query 26: Monthly Sales Trend
SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month; 

-- Query 27: Yearly Sales Trend
SELECT
    YEAR(`Order Date`) AS Year,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY YEAR(`Order Date`)
ORDER BY Year;

-- Query 28: Total Sales by Sub-Category
SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Query 29: Total Profit by Sub-Category
SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

-- Query 30: Top 10 Products by Quantity Sold
SELECT
    `Product Name`,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Quantity DESC
LIMIT 10;