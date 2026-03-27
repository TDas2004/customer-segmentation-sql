-- Do complaint rates vary by income or education level

select
c.education,

round(100.0 * count(*)filter (where cm.complain = 1 and income < 30000)/
nullif (count(*) filter (where income < 30000),0),2) as lower_income,

round(100.0 * count(*) filter (where cm.complain = 1 and income between 30000 and 70000)/
nullif (count(*) filter (where income between 30000 and 70000),0),2) as mid_income,

round(100.0 * count(*) filter (where cm.complain = 1 and income > 70000)/
nullif (count(*) filter (where income > 70000),0),2) as high_income

from customers c join complaints cm
on c.customer_id = cm.customer_id

group by c.education
order by c.education
