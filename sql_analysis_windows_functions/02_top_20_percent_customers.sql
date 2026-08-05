-- Identify the top 20% customers using spending-based ranking

select * 
from
(
select 
x.customer_id, x.total_spending,
percent_rank() over(order by total_spending desc) as pr
from
(
select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spending
from spending
) x
)y

where pr <= 0.20