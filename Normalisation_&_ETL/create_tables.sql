-- Customers

create table customers(

customer_id int primary key,
year_of_Birth int,
education varchar(50),
Martial_status varchar(50),
income numeric,
kidhome int,
teenhome int,
dt_customer Date,
recency int

);

-- Spending

create table spending(
customer_id int primary key,
mnt_wines int,
mnt_fruits int,
mnt_meat_products int,
mnt_fish_products int,
mnt_sweet_products int,
mnt_gold_products int,

CONSTRAINT fk_customer_spending
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)

);

-- Purchases

CREATE TABLE purchases (
    customer_id INT PRIMARY KEY,
    num_web_purchases INT,
    num_catalog_purchases INT,
    num_store_purchases INT,
    num_deals_purchases INT,
    num_web_visits_month INT,

    CONSTRAINT fk_customer_purchases
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- Campaigns

CREATE TABLE campaigns (
    customer_id INT PRIMARY KEY,
    accepted_cmp1 INT,
    accepted_cmp2 INT,
    accepted_cmp3 INT,
    accepted_cmp4 INT,
    accepted_cmp5 INT,
    response INT,

    CONSTRAINT fk_customer_campaigns
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- complaints

CREATE TABLE complaints (
    customer_id INT PRIMARY KEY,
    complain INT,

    CONSTRAINT fk_customer_complaints
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);


-- Table data

select * from customers;

select * from spending;

select * from purchases;

select * from campaigns;

select * from complaints;