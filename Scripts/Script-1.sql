SELECT
	DATE_TRUNC('month', ca.ORDERDATE)::date AS year_month,
	SUM(total_net_revenenue) AS total_revenue,
	COUNT(DISTINCT ca.orderdate) AS total_customers,
	SUM(total_net_revenenue) / COUNT(DISTINCT ca.customerkey) AS customer_key
FROM cohort_analysis ca
GROUP BY year_month
ORDER BY year_month
