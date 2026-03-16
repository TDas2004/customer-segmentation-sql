# Customer Segmentation & Marketing Campaign Analysis using SQL

## Project Overview
This project focuses on analyzing a marketing campaign dataset using **PostgreSQL and SQL** to understand customer behavior, campaign effectiveness, and customer demographics.

The dataset was previously **cleaned, explored, and visualized using Python**, and the results were published in a separate repository.  
In this project, the goal is to perform **structured SQL analysis** by designing a relational database schema, implementing an ETL pipeline, and answering analytical questions using SQL.

The project progresses through multiple stages:

- Database normalization
- ETL pipeline implementation
- Basic SQL analysis
- Intermediate SQL analysis *(in progress)*
- Advanced SQL queries *(planned)*
- Window functions *(planned)*
- Business insight queries *(planned)*


---

# Dataset Information

**Dataset Name:** Marketing Campaign Data  
**Source:** Kaggle  

The dataset contains information about customers, their demographics, purchasing behavior, and responses to marketing campaigns.

Key attributes include:

- Customer demographics (education, marital status, income)
- Household information (children at home)
- Product spending categories
- Purchase channels (web, store, catalog)
- Marketing campaign responses
- Customer complaints


---

# Technologies Used

- PostgreSQL  
- SQL  

The dataset was previously cleaned and explored using:

- Python
- Pandas
- numpy
- Jupyter Notebook


---

# Database Design

The dataset was normalized into multiple relational tables to improve structure and reduce redundancy.

### Tables Created

| Table | Description |
|------|-------------|
| customers | Customer demographic information |
| spending | Product spending across categories |
| purchases | Customer purchase behavior across channels |
| campaigns | Marketing campaign acceptance data |
| complaints | Customer complaint records |
| raw_customers | Temporary staging table used for ETL |


---

# ETL Pipeline

The ETL workflow implemented in this project:

CSV Dataset
↓
Raw staging table (raw_customers)
↓
Data transformation using SQL
↓
Normalized relational tables


Steps performed:

1. Import cleaned CSV dataset
2. Load data into staging table
3. Transform and insert data into normalized tables
4. Validate data integrity


---

# Project Structure
```
customer_segmentation_sql
│
├── data
│ └── marketing_clean.csv
│
├── Normalisation_&_ETL
│ ├── create_tables.sql
│ ├── raw_table.sql
│ └── data_transformation.sql
│
├── sql_analysis(Basics)
│ ├── 01_total_customer_count.sql
│ ├── 02_duplicate_customer_id_check.sql
│ ├── 03_missing_income_customers.sql
│ ├── 04_customer_age_statistics.sql
│ ├── 05_customers_with_complaints.sql
│ ├── 06_campaign_acceptance_percentage.sql
│ ├── 07_customers_with_children.sql
│ ├── 08_education_level_distribution.sql
│ ├── 09_average_customer_tenure.sql
│ └── 10_campaign_binary_validation.sql

```

---

# Basic SQL Analysis (Completed)

The following data validation and exploratory queries have been completed:

- Total number of customers
- Duplicate customer ID validation
- Missing income values
- Customer age statistics
- Complaint analysis
- Campaign acceptance rate
- Customers with children
- Education level distribution
- Average customer tenure
- Binary validation of campaign response fields

---

# Next Steps

The following analysis stages will be completed and added soon:

### Intermediate SQL Analysis
- Customer spending patterns
- Purchase channel analysis
- Campaign effectiveness comparison

### Advanced SQL Queries
- Complex aggregations
- Subqueries and CTEs
- Behavioral segmentation

### Window Functions
- Customer ranking
- Percentile analysis
- Spending distribution

### Business Insights
- High value customer identification
- Marketing strategy insights
- Customer segmentation recommendations


---

# Project Goal

The primary goal of this project is to **strengthen SQL skills by working with a real-world dataset**, focusing on:

- Database normalization
- ETL design
- Analytical SQL queries
- Data validation
- Customer analytics

This project will continue to evolve as more advanced SQL techniques and analytical insights are added.
