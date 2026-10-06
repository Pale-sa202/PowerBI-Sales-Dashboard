SELECT
    CASE
        WHEN c.age BETWEEN 18 AND 25 THEN '18-25'
        WHEN c.age BETWEEN 26 AND 35 THEN '26-35'
        WHEN c.age BETWEEN 36 AND 45 THEN '36-45'
        WHEN c.age BETWEEN 46 AND 60 THEN '46-60'
		WHEN c.age BETWEEN 61 AND 75 THEN '61-75'
        ELSE '76+'
    END AS age_band,
    t.channel,
    COUNT(*) AS num_transactions
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
GROUP BY age_band, t.channel
ORDER BY age_band, num_transactions DESC;