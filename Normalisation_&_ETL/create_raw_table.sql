CREATE TABLE raw_customers (
    id INT,
    year_birth INT,
    education VARCHAR(50),
    marital_status VARCHAR(50),
    income NUMERIC,
    kidhome INT,
    teenhome INT,
    dt_customer DATE,
    recency INT,

    mntwines INT,
    mntfruits INT,
    mntmeatproducts INT,
    mntfishproducts INT,
    mntsweetproducts INT,
    mntgoldprods INT,

    numdealspurchases INT,
    numwebpurchases INT,
    numcatalogpurchases INT,
    numstorepurchases INT,
    numwebvisitsmonth INT,

    acceptedcmp1 INT,
    acceptedcmp2 INT,
    acceptedcmp3 INT,
    acceptedcmp4 INT,
    acceptedcmp5 INT,
    response INT,
    complain INT
);


-- COPY raw_customers
-- FROM 'D:/Library/SQL_Project_2/0_data/cleaned_data.csv'
-- DELIMITER ','
-- CSV HEADER;

select * from raw_customers;