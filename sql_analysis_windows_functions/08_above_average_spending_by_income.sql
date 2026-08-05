-- Identify customers whose spending is above average for their income group.

with total_spending as (

select
c.customer_id, c.income, (s.mnt_wines + s.mnt_fruits + s.mnt_meat_products + s.mnt_fish_products + s.mnt_gold_products + s.mnt_sweet_products)
as total_spending 

from customers c 
join spending s

on c.customer_id = s.customer_id
),

income_group as (

select customer_id, income, total_spending ,
ntile(3) over(order by income) as income_group
from total_spending
),

avg_spending as(

select customer_id, income, total_spending, 
round(avg(total_spending) over(partition by income_group),2) as avg_spending
from income_group
)

select * from avg_spending
where total_spending > avg_spending;


