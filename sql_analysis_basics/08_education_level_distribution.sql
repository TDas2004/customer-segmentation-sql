-- What is the distribution of education levels among customers?

select education, count(*) as total_customers
from customers
group by education
order by total_customers desc ;