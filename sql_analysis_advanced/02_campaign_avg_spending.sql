-- Which campaign generated the highest average customer spending?

with total_spending as (

select
s.customer_id,
(s.mnt_wines + s.mnt_fruits + s.mnt_meat_products + s.mnt_fish_products + s.mnt_sweet_products + s.mnt_gold_products ) as total_spent,
c.accepted_cmp1,c.accepted_cmp2,c.accepted_cmp3,c.accepted_cmp4,c.accepted_cmp5

from spending s join campaigns c
on c.customer_id = s.customer_id
),

campaign_data as (

select customer_id,total_spent, 'camp_1' as campaign, accepted_cmp1 as accepted from total_spending

union all

select customer_id,total_spent, 'camp_2', accepted_cmp2 from total_spending

union all

select customer_id,total_spent, 'camp_3', accepted_cmp3 from total_spending

union all

select customer_id,total_spent, 'camp_4', accepted_cmp4 from total_spending

union all

select customer_id,total_spent, 'camp_5', accepted_cmp5 from total_spending

)

select campaign, round(avg(total_spent),2) as avg_spending from  campaign_data
where accepted = 1

group by campaign
order by avg_spending desc;





