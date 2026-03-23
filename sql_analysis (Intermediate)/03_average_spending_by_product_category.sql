-- What is the average spending per customer by product category?

select 'wine' as category , avg(mnt_wines) as avg_spending from spending

union all

select 'fruit', avg(mnt_fruits) from spending

union all

select 'meat', avg(mnt_meat_products) from spending

union all

select 'fish', avg(mnt_fish_products) from spending

union all

select 'sweet', avg(mnt_sweet_products) from spending

union all

select 'gold', avg(mnt_gold_products) from spending

order by avg_spending desc;

