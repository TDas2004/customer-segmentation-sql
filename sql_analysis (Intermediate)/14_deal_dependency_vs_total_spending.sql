-- Does deal dependency correlate with lower total spending?

with Total_spending as 
(
select customer_id,
(mnt_wines + mnt_fruits + mnt_meat_products + mnt_fish_products + mnt_sweet_products + mnt_gold_products) 
as Total_spent from spending
)

select 
case
when purchases.num_deals_purchases > (select avg(num_deals_purchases)from purchases) then 'High Deals'
else 'Low Deals'
end as Deal_group,


round(avg(Total_spending.Total_spent),2) as AVG_spent

from purchases 
join Total_spending

on purchases.customer_id = Total_spending.customer_id

Group by Deal_group;
