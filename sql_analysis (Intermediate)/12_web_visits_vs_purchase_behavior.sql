-- Are customers who visit the website more frequently actually buying more?

select
num_web_visits_month,
round(avg(num_web_purchases),2) as AVG_web_purchase
from purchases

group by num_web_visits_month
order by num_web_visits_month;