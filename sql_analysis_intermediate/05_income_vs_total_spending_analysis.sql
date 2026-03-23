-- What is the relationship between income level and total spending?

select customers.income
,(spending.mnt_wines + spending.mnt_fruits + spending.mnt_meat_products + spending.mnt_fish_products + spending.mnt_sweet_products + spending.mnt_gold_products) as Total_spending
from customers
inner join spending
on customers.customer_id = spending.customer_id;