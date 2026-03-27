-- Which campaign (Cmp1–Cmp5) has the highest acceptance rate?

SELECT 'Campaign 1' AS campaign_name, COUNT(customer_id) AS total_accepted FROM campaigns WHERE accepted_cmp1 = 1
UNION ALL
SELECT 'Campaign 2', COUNT(customer_id) FROM campaigns WHERE accepted_cmp2 = 1
UNION ALL
SELECT 'Campaign 3', COUNT(customer_id) FROM campaigns WHERE accepted_cmp3 = 1
UNION ALL
SELECT 'Campaign 4', COUNT(customer_id) FROM campaigns WHERE accepted_cmp4 = 1
UNION ALL
SELECT 'Campaign 5', COUNT(customer_id) FROM campaigns WHERE accepted_cmp5 = 1
ORDER BY total_accepted DESC
LIMIT 1;
