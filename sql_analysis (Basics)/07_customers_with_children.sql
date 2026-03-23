-- How many customers have children?

select count(*) from customers
where kidhome + teenhome > 0;
