-- Do campaign responders spend more than non-responders?

with campaign_data as (

select customer_id, accepted_cmp1 as response from campaigns

union all

select customer_id, accepted_cmp2 from campaigns

union all

select customer_id, accepted_cmp3 from campaigns

union all

select customer_id, accepted_cmp4 from campaigns

union all

select customer_id, accepted_cmp5 from campaigns

)

select cd.response, round(avg(s.mnt_wines + s.mnt_fruits + s.mnt_meat_products +
        s.mnt_fish_products + s.mnt_sweet_products + s.mnt_gold_products
    ), 2) AS avg_spending

from campaign_data cd join spending s
on cd.customer_id = s.customer_id

group by response;
	