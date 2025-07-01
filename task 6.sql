create database task5;
show databases;
use task5;

select * from online_sales;

SELECT EXTRACT(MONTH FROM order_date) AS month FROM online_sales;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date);

SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
    SUM(total) AS revenue
FROM online_sales
GROUP BY 
    YEAR(order_date), 
    MONTH(order_date)
LIMIT 0, 1000;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS volume
FROM online_sales
GROUP BY year, month;


SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
SUM(total) AS revenue,COUNT(DISTINCT order_id) AS volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date) ASC, MONTH(order_date) ASC
LIMIT 0, 1000;

SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
SUM(total) AS revenue,
COUNT(DISTINCT order_id) AS volume
FROM online_sales
WHERE order_date BETWEEN '2020-10-01' AND '2020-11-30'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date)
LIMIT 0, 1000;







