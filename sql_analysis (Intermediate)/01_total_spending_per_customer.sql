-- What is the total spending per customer across all product categories?

select customer_id,(mnt_wines+mnt_fruits+mnt_meat_products+mnt_fish_products+mnt_sweet_products+mnt_gold_products) as Total_spending 
from spending; 