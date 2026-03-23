-- What is the total revenue contribution of deal-driven customers?

with Total_spending as
(
select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) 
as Total_spent from spending
)

select 
case
when p.num_deals_purchases > (select avg(num_deals_purchases) from purchases) then 'High_Deal'
else 'Low_Deal'
end as Deal_group,

sum(ts.Total_spent) as Total_Revenue

from purchases p join Total_spending ts
on p.customer_id = ts.customer_id

group by Deal_group;
