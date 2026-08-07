-- Customer Table

INSERT INTO customers (
    customer_id,
    year_of_Birth,
    education,
    Martial_status,
    income,
    kidhome,
    teenhome,
    dt_customer,
    recency
)
SELECT
    id,
    year_birth,
    education,
    marital_status,
    income,
    kidhome,
    teenhome,
    dt_customer,
    recency
FROM raw_customers;

-- Spending Table

INSERT INTO spending (
    customer_id,
    mnt_wines,
    mnt_fruits,
    mnt_meat_products,
    mnt_fish_products,
    mnt_sweet_products,
    mnt_gold_products
)
SELECT
    id,
    mntwines,
    mntfruits,
    mntmeatproducts,
    mntfishproducts,
    mntsweetproducts,
    mntgoldprods
FROM raw_customers;

-- Purchase Table

INSERT INTO purchases (
    customer_id,
    num_web_purchases,
    num_catalog_purchases,
    num_store_purchases,
    num_deals_purchases,
    num_web_visits_month
)
SELECT
    id,
    numwebpurchases,
    numcatalogpurchases,
    numstorepurchases,
    numdealspurchases,
    numwebvisitsmonth
FROM raw_customers;

-- Campaigns Table

INSERT INTO campaigns (
    customer_id,
    accepted_cmp1,
    accepted_cmp2,
    accepted_cmp3,
    accepted_cmp4,
    accepted_cmp5,
    response
)
SELECT
    id,
    acceptedcmp1,
    acceptedcmp2,
    acceptedcmp3,
    acceptedcmp4,
    acceptedcmp5,
    response
FROM raw_customers;

-- Complaints Table

INSERT INTO complaints (
    customer_id,
    complain
)
SELECT
    id,
    complain
FROM raw_customers;