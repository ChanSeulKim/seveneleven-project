SELECT MONTH(order_date) AS month,
       ROUND(SUM(CASE WHEN ages = '20대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '20대' THEN customer_id END)) AS ARPPU_20s,
       ROUND(SUM(CASE WHEN ages = '30대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '30대' THEN customer_id END)) AS ARPPU_30s,
       ROUND(SUM(CASE WHEN ages = '40대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '40대' THEN customer_id END)) AS ARPPU_40s,
       ROUND(SUM(CASE WHEN ages = '50대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '50대' THEN customer_id END)) AS ARPPU_50s,
       ROUND(SUM(CASE WHEN ages = '60대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '60대' THEN customer_id END)) AS ARPPU_60s,
       ROUND(SUM(CASE WHEN ages = '70대' THEN price END)/COUNT(DISTINCT CASE WHEN ages = '70대' THEN customer_id END)) AS ARPPU_70s
FROM seveneleven
GROUP BY month
ORDER BY month