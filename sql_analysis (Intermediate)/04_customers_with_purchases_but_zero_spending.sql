-- Which customers have zero spending but made purchases?

select purchases.customer_id from purchases
Inner join spending
on purchases.customer_id = spending.customer_id
where (spending.mnt_wines + spending.mnt_fruits + spending.mnt_meat_products + spending.mnt_fish_products + spending.mnt_sweet_products + spending.mnt_gold_products) = 0
AND
(purchases.num_web_purchases + purchases.num_catalog_purchases + purchases.num_store_purchases + purchases.num_deals_purchases) > 0;
