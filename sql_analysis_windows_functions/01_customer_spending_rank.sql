-- Rank customers by total spending using RANK() or DENSE_RANK().

-- Using Rank()

select customer_id, total_spending,
rank() over (order by total_spending desc) as spending_rank
from
(
select customer_id, 
(s.mnt_wines + s.mnt_fruits + s.mnt_meat_products + s.mnt_fish_products + s.mnt_sweet_products + s.mnt_gold_products ) as total_spending
from spending s
) x

-- Using Dense_Rank()

select customer_id, total_spending,
dense_rank() over (order by total_spending desc) as spending_rank
from
(
select customer_id, 
(s.mnt_wines + s.mnt_fruits + s.mnt_meat_products + s.mnt_fish_products + s.mnt_sweet_products + s.mnt_gold_products ) as total_spending
from spending s
) x
