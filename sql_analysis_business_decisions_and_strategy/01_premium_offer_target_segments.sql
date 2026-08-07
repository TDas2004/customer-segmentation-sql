-- Which customer segment should receive premium (non-discounted) offers?

with total_spending as(

select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spending
from spending
),

customer_segment as (

select customer_id,
ntile(4) over( order by income) as segment
from customers
)

select cs.segment, round(avg(ts.total_spending),2) as avg_total_spending, round(avg(p.num_deals_purchases),2) as avg_num_deals_purchases
from customer_segment cs

join purchases p
on p.customer_id = cs.customer_id

join total_spending ts
on cs.customer_id = ts.customer_id

group by cs.segment

order by avg_total_spending desc,
avg_num_deals_purchases asc
