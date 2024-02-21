SELECT MONTH(order_date) AS month,
       ROUND(SUM(price)/COUNT(DISTINCT customer_id)) AS ARPPU
FROM seveneleven
GROUP BY month
ORDER BY month