-- Analyze Sales Performance Over Time.
-- Change Over Year

SELECT 
	DATETRUNC(year,order_date) AS order_date,
	SUM(sales_amount) total_sales,
	COUNT(DISTINCT customer_key) AS total_customer,
	SUM(quantity) AS total_quantity

FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(year,order_date)
ORDER BY DATETRUNC(year,order_date)

-- Change Over Month

SELECT 
	DATETRUNC(month,order_date) AS order_date,
	SUM(sales_amount) total_sales,
	COUNT(DISTINCT customer_key) AS total_customer,
	SUM(quantity) AS total_quantity

FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month,order_date)
ORDER BY DATETRUNC(month,order_date)