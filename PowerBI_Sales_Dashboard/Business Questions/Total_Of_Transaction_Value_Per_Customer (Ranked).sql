SELECT
    customer_id,
    transaction_date,
    amount,
    SUM(amount) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS running_total,
    RANK() OVER (ORDER BY amount DESC) AS amount_rank
FROM transactions;