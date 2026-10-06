SELECT c.customer_id, c.first_name, c.last_name, a.account_count
FROM customers c
JOIN (
    SELECT customer_id, COUNT(*) AS account_count
    FROM accounts
    GROUP BY customer_id
    HAVING COUNT(*) > 1
) a ON c.customer_id = a.customer_id;