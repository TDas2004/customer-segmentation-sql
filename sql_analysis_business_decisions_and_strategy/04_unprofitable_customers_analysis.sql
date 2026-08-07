-- Which customers are unprofitable and should be deprioritized?

with customer_spending as (

select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spending
from spending

),

camp_response as (

select customer_id,
(accepted_cmp1 + accepted_cmp2 + accepted_cmp3 + accepted_cmp4 + accepted_cmp5) as accepted_camp
from campaigns
)

select cs.customer_id, cs.total_spending , cr.accepted_camp

from customer_spending cs 
join camp_response cr
on cr.customer_id = cs.customer_id

where cs.total_spending < 500 
and cr.accepted_camp <= 1

order by cs.total_spending desc
