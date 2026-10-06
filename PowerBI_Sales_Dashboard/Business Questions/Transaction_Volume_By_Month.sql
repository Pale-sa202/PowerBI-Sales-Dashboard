-- Business Question: Month-on-month transaction volume
SELECT to_char(transaction_date::date, 'YYYY-MM') AS month, COUNT(*) AS num_transactions
FROM transactions
GROUP BY month
ORDER BY month;