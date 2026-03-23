-- What is the average number of web visits per month by customer segment?

select 
case 
when income < 30000 then'LOW'
when income between 30000 and 70000 then 'Medium'
else 'High'

end as Customer_segment,

round(avg(num_web_visits_month),2) as Avg_web_visits

from customers
join purchases

on customers.customer_id = purchases.customer_id

group by Customer_segment;