-- Compare each customer’s spending against the segment average using AVG() OVER().


with customer_spending as 
(
select customer_id, 
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products ) as total_spending
from spending
),

customer_segment as 
(
select customer_id,
case
when income < 30000 then 'low_income'
when income between 30000 and 70000 then 'mid_income'
else 'high_income'
end as segment
from customers
)

select 
cs.customer_id,
cs.total_spending,
seg.segment,

round(avg(cs.total_spending) over(partition by seg.segment),2) as seg_avg,

case 
when cs.total_spending > avg(cs.total_spending) over(partition by seg.segment)
then 'above_avg'
else 'below_avg'
end as status

from customer_spending cs join customer_segment seg
on cs.customer_id = seg.customer_id





