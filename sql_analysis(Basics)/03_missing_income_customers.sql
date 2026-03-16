-- How many customers have NULL or missing income values?

select count(*) from customers
where income is NULL;