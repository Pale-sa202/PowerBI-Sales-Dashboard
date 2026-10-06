SELECT branch, AVG(balance_after) AS avg_balance_after
FROM transactions
GROUP BY branch
ORDER BY avg_balance_after DESC;