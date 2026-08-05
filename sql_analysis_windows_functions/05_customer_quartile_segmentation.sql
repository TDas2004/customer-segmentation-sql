-- Segment customers into quartiles using NTILE(4) based on total spending.

with customer_spending as 
(
select customer_id, 
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products ) as total_spending
from spending
)

select 
customer_id,
total_spending,

case 
when ntile(3) over(order by total_spending desc) = 1 then 'high_spending'
when ntile(3) over (order by total_spending desc) = 2 then 'mid_spending'
else 'low-spending'
end as segment

from customer_spending