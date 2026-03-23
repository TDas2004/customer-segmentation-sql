-- What is the average number of purchases per channel (Web, Store, Catalog)?

select  
round(avg(num_web_purchases),2) as Web_purchase,
round(avg(num_catalog_purchases),2) as Catalog_purchase,
round(avg(num_store_purchases),2) as Store_purchase
from purchases;
