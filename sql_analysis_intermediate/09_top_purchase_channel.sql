-- Which channel contributes the highest number of purchases overall?
select

case
when Web_purchases >= Catalog_purchases and Web_purchases >= Store_purchases then 'Web_Purchase'
when Catalog_purchases >= Web_purchases and Catalog_purchases >= Store_purchases then 'Catalog_purchase'
else 'Store_purchase'
end as highest_contributer_channel

from

(select
sum(num_web_purchases) as Web_purchases,
sum(num_catalog_purchases) as Catalog_purchases,
sum(num_store_purchases) as Store_purchases

from purchases) t;

