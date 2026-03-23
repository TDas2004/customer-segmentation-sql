-- Are there any duplicate customer IDs across tables?

select customer_id, count (*) AS Occurance 
from customers
group by customer_id
having count(customer_id) > 1; 