-- Analyzing Customer Value and Retention Potential through Complaint Behavior"

select
case
when c.complain = 0 then 'no_complaints'
else 'have_complaints'
end as customer_complaints,

count(c.customer_id) as total_customer,

round(avg(s.mnt_wines + s.mnt_fruits + s.mnt_meat_products + s.mnt_gold_products + s.mnt_fish_products + s.mnt_sweet_products ),2) as avg_spending

from complaints c join spending s
on c.customer_id = s.customer_id

group by customer_complaints
order by avg_spending desc;

