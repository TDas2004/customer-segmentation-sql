-- Which product category generates the highest overall revenue?

select 'wine' as category, sum(mnt_wines) as revenue from spending

union all 

select 'fruits', sum (mnt_fruits) from spending

union all

select 'meat', sum(mnt_meat_products) from spending

union all 

select 'fish', sum(mnt_meat_products) from spending

union all

select 'gold', sum(mnt_meat_products) from spending

union all 

select 'sweet', sum(mnt_meat_products) from spending

order by revenue desc;

