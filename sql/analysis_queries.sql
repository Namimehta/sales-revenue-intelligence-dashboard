-- Sales & Revenue Intelligence | SQL practice
-- Assumes data/Sales.csv has been imported as dbo.Sales.
-- Currency is synthetic and shown in ₹ for portfolio practice only.

-- 1. Monthly realized revenue and profit
SELECT
    DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), 1) AS SalesMonth,
    SUM(CASE WHEN OrderStatus = 'Won' THEN NetSales ELSE 0 END) AS RealizedRevenue,
    SUM(CASE WHEN OrderStatus = 'Won' THEN Profit ELSE 0 END) AS GrossProfit
FROM dbo.Sales
GROUP BY DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), 1)
ORDER BY SalesMonth;

-- 2. Revenue and profit by region
SELECT Region,
       SUM(CASE WHEN OrderStatus = 'Won' THEN NetSales ELSE 0 END) AS RealizedRevenue,
       SUM(CASE WHEN OrderStatus = 'Won' THEN Profit ELSE 0 END) AS GrossProfit
FROM dbo.Sales
GROUP BY Region
ORDER BY RealizedRevenue DESC;

-- 3. Sales channel funnel
SELECT SalesChannel,
       COUNT(*) AS TotalOrders,
       SUM(CASE WHEN OrderStatus = 'Won' THEN 1 ELSE 0 END) AS WonOrders,
       CAST(1.0 * SUM(CASE WHEN OrderStatus = 'Won' THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(8,4)) AS WinRate
FROM dbo.Sales
GROUP BY SalesChannel
ORDER BY WinRate DESC;

-- 4. Product category performance
SELECT Category,
       SUM(CASE WHEN OrderStatus = 'Won' THEN NetSales ELSE 0 END) AS RealizedRevenue,
       SUM(CASE WHEN OrderStatus = 'Won' THEN Profit ELSE 0 END) AS GrossProfit
FROM dbo.Sales
GROUP BY Category
ORDER BY RealizedRevenue DESC;

-- 5. Sales representative scorecard
SELECT SalesRep,
       COUNT(*) AS TotalOrders,
       SUM(CASE WHEN OrderStatus = 'Won' THEN 1 ELSE 0 END) AS WonOrders,
       SUM(CASE WHEN OrderStatus = 'Won' THEN NetSales ELSE 0 END) AS RealizedRevenue
FROM dbo.Sales
GROUP BY SalesRep
ORDER BY RealizedRevenue DESC;
