-- Which low-spending customers show high campaign responsiveness?

with customer_spending as (

select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spending
from spending
),

customer_segment as (

select customer_id, total_spending,
ntile(4) over (order by total_spending) as segment
from customer_spending
)

select cs.customer_id,cs.total_spending,
(c.accepted_cmp1 + c.accepted_cmp2 + c.accepted_cmp3 + c.accepted_cmp4 + c.accepted_cmp5) as camp_response

from customer_segment cs 
join campaigns c
on cs.customer_id = c.customer_id

where segment = 1
order by camp_response desc