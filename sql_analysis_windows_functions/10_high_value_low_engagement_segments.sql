-- Which customer segments are most valuable but least engaged digitally?

with customer_segment as 
(
select customer_id,
ntile(4) over(order by income) as segment
from customers
)

select 

cs.segment, round (avg(c.income),2) as avg_income,
round(avg(p.num_web_purchases),2) as avg_web_purchase,
round(avg(p.num_web_visits_month),2) as avg_web_visits

from customer_segment cs 

join customers c 
on c.customer_id = cs.customer_id

join purchases p
on p.customer_id = cs.customer_id

group by cs.segment
order by avg_income desc,
avg_web_purchase asc

