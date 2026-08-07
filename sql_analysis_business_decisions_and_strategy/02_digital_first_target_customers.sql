-- Which customers should be targeted for digital-first campaigns?

select customer_id, num_store_purchases, num_web_visits_month, num_web_purchases 
from purchases
where num_web_purchases < 5 and num_store_purchases >= 10
order by num_store_purchases desc, num_web_visits_month asc