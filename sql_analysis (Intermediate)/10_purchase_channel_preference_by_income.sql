-- Do high-income customers prefer Store, Web, or Catalog purchases?

select
round(avg(num_web_purchases),2) as Web_purchase,
round(avg(num_store_purchases),2) as Store_purchase,
round(avg(num_catalog_purchases),2) as Catalog_purchase

from purchases
join customers

on customers.customer_id = purchases.customer_id

where income>(select avg(income) from customers);