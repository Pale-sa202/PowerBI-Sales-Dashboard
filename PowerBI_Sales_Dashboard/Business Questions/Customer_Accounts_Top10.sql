SELECT customer_id, SUM(amount) AS total_value
FROM transactions
GROUP BY customer_id
ORDER BY total_value DESC
LIMIT 10;
