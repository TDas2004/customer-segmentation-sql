-- Which customer demographics respond best to marketing campaigns

select
case
when income < 30000 then 'low_income'
when income between 30000 and 70000 then 'mid_income'
else 'high_income'
end as Income_grp,

round(avg(response),3) as avg_response

from customers join campaigns
on customers.customer_id = campaigns.customer_id

group by Income_grp
order by avg_response 
