-- How many customers have at least one complaint?

select count(*) from complaints
where complain = 1;


--  As per DB:

-- 0 → no complaint
-- 1 → customer complained