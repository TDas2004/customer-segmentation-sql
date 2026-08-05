-- How do campaign acceptance rates differ across spending quartiles?

With total_spending as 
( select customer_id, (mnt_wines + mnt_fruits + mnt_meat_products + mnt_gold_products + mnt_fish_products + mnt_sweet_products)
as total_spending
from Spending),

spending_quartile as (
select customer_id,
ntile(4) over(order by total_spending) as quartile
from total_spending
)

select sq.quartile,count(*) as total_customer,
round(avg(c.response)*100 ,2) as acceptance_rate
from spending_quartile sq 
join Campaigns c
on sq.customer_id = c.customer_id

group by sq.quartile;