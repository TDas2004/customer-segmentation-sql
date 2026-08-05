-- Rank product categories by revenue contribution per customer segment.

with customer_segment as (

select customer_id,
ntile(4) over (order by income) as segment
from customers
),

customer_sales as (

select cs.segment,
'Wines' as category, sum(s.mnt_wines) as revenue
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

union all

select cs.segment,
'Fruits' , sum(s.mnt_fruits)
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

union all 

select cs.segment,
'Meat' , sum(s.mnt_meat_products)
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

union all

select cs.segment,
'Fish' , sum(s.mnt_fish_products)
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

union all

select cs.segment,
'Sweet' , sum(s.mnt_sweet_products)
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

union all

select cs.segment,
'Gold' , sum(s.mnt_gold_products)
from customer_segment cs
join spending s
on cs.customer_id = s.customer_id
group by cs.segment

)

select 
segment, category, revenue,
dense_rank() over ( partition by segment order by revenue desc) as category_rank
from customer_sales
order by segment,category_rank

