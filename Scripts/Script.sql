WITH sales_data AS 
( SELECT 
 customerkey,
 SUM(quantity * netprice * exchangerate) AS net_revenue
FROM sales
GROUP BY customerkey )

SELECT 
AVG(s.net_revenue) AS spending_customer_avg,
AVG(COALESCE(s.net_revenue, 0 )) AS all_customer_avg
FROM customer c
LEFT JOIN sales_data s ON c.customerkey = s.customerkey 



