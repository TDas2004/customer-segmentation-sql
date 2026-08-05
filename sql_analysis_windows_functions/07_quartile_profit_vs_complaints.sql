-- Which quartile generates the highest profit with the lowest complaints?

WITH total_profit AS (

SELECT customer_id,
       (mnt_wines +
        mnt_fruits +
        mnt_meat_products +
        mnt_fish_products +
        mnt_sweet_products +
        mnt_gold_products) AS total_profit
FROM spending

),

profit_quartile AS (

SELECT customer_id,
       total_profit,
       NTILE(4) OVER (ORDER BY total_profit) AS profit_quartile
FROM total_profit

)

SELECT
    pq.profit_quartile,
    COUNT(*) AS total_customers,
    SUM(pq.total_profit) AS total_profit,
    SUM(c.complain) AS total_complaints
FROM profit_quartile pq
JOIN complaints c
ON pq.customer_id = c.customer_id
GROUP BY pq.profit_quartile
ORDER BY total_profit DESC;