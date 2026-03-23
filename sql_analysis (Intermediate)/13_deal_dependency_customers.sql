-- Which customers rely heavily on deals (NumDealsPurchases high)?

select customer_id,num_deals_purchases from purchases
where num_deals_purchases > (select avg(num_deals_purchases) from purchases)
order by num_deals_purchases desc;