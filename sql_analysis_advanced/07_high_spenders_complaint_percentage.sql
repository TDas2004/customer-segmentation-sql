-- What percentage of high-spending customers have lodged complaints?

with total_spending as 
(
select customer_id, (mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) as total_spend
from spending
),

high_spenders as
(
select * from total_spending where total_spend > (select avg(total_spend) from total_spending) 
)

select

round(100.0 * count(*) filter (where c.complain = 1) / count(*),2) as percentage_complained

from high_spenders join complaints c
on high_spenders.customer_id = c.customer_id;

