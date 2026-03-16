-- What is the minimum, maximum, and average customer age?

select

MIN(Extract(year from current_date ) - year_of_Birth ) as min_age,
MAX(Extract(year from current_date ) - year_of_Birth ) as max_age,
AVG(Extract(year from current_date ) - year_of_Birth ) as avg_age

from customers;

