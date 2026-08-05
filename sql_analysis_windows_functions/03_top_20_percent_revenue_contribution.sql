-- What percentage of total revenue comes from the top 20% customers?

with customer_spending as 
(
select customer_id, 
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spend 
from spending
),

ranked as 
(

select customer_id, total_spend, percent_rank() over (order by total_spend desc) as pr
from customer_spending

)

select 
round(100 * sum(case when pr <= 0.2 then total_spend else 0 end)/ sum(total_spend),2) as top_20_percent_customer_revenue_contribution
from ranked
