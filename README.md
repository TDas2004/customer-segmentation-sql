# Customer Segmentation & Marketing Campaign Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing a real-world **marketing campaign dataset** using **PostgreSQL and SQL** to understand customer behavior, spending patterns, and campaign effectiveness.

The dataset was initially cleaned and explored using Python, and this project extends that work by implementing a **structured SQL-based analytical system**, including database design, ETL pipeline, and multi-level analysis.

---

## 🎯 Project Objectives

* Design a normalized relational database
* Build an ETL pipeline using SQL
* Perform analytical queries to extract business insights
* Apply customer segmentation techniques
* Analyze purchasing behavior and marketing effectiveness

---

## 🧰 Technologies Used

* PostgreSQL
* SQL

*Pre-processing (previous work):*

* Python
* Pandas
* NumPy
* Jupyter Notebook

---

## 🗂️ Dataset Information

**Dataset:** Marketing Campaign Data (Kaggle)

### Key Features:

* Customer demographics (income, education, marital status)
* Household details (kids, teens)
* Product spending categories
* Purchase channels (Web, Store, Catalog)
* Campaign responses
* Complaint records

---

## 🏗️ Database Design

The dataset was normalized into multiple relational tables:

| Table         | Description                       |
| ------------- | --------------------------------- |
| customers     | Customer demographic data         |
| spending      | Product category spending         |
| purchases     | Purchase behavior across channels |
| campaigns     | Campaign response data            |
| complaints    | Complaint records                 |
| raw_customers | Staging table for ETL             |

---

## 🔄 ETL Pipeline

```
CSV Dataset
↓
Raw Staging Table (raw_customers)
↓
SQL Transformations
↓
Normalized Tables
```

### Steps:

1. Load CSV into staging table
2. Transform data using SQL
3. Insert into normalized tables
4. Validate data integrity

---

## 📊 SQL Analysis

### ✅ Basic SQL Analysis (Completed)

* Total number of customers
* Duplicate ID validation
* Missing income detection
* Customer age statistics
* Complaint analysis
* Campaign acceptance rate
* Customers with children
* Education distribution
* Average tenure
* Campaign data validation

---

### 🚀 Intermediate SQL Analysis (Completed)

This stage focuses on **customer behavior, spending patterns, and business insights**:

#### 💰 Spending Analysis

* Total spending per customer
* Highest revenue-generating product category
* Average spending by category
* Zero spending vs purchase behavior

#### 👨‍👩‍👧 Customer Behavior

* Income vs total spending relationship
* Spending comparison (with vs without children)
* Product categories impacted by children

#### 🛒 Purchase Behavior

* Average purchases per channel
* Most used purchase channel
* Channel preference by income group

#### 🌐 Web & Engagement Analysis

* Average web visits per segment
* Web visits vs actual purchases

#### 🎯 Deal & Discount Analysis

* High deal-dependent customers
* Deal dependency vs total spending
* Revenue contribution from deal-driven customers

---

## 📈 Key Business Insights

* High deal-dependent customers tend to spend less overall
* Income level does not always directly correlate with higher spending
* Store purchases often outperform web purchases in conversion
* Customers with children show different category preferences
* High website visits do not always translate into higher purchases

---

## 📁 Project Structure

```
customer_segmentation_sql
│
├── data
│   └── marketing_clean.csv
│
├── Normalisation_&_ETL
│   ├── create_tables.sql
│   ├── raw_table.sql
│   └── data_transformation.sql
│
├── sql_analysis_basics
│   └── (basic queries)
│
├── sql_analysis_intermediate
│   └── (behavior & segmentation queries)
│
└── README.md
```

---

## 🔮 Future Enhancements

### Advanced SQL

* Complex aggregations
* Nested queries
* Performance optimization

### Window Functions

* Ranking customers
* Percentile analysis
* Running totals

### Business Intelligence

* High-value customer identification
* Campaign targeting strategy
* Customer lifetime insights

---

## 🎯 Conclusion

This project demonstrates the ability to:

* Design relational databases from raw datasets
* Build ETL pipelines using SQL
* Write complex queries using joins, subqueries, and CTEs
* Perform customer segmentation and behavioral analysis
* Extract meaningful business insights from data

---

## 💡 Project Goal

To develop strong SQL skills and gain hands-on experience in **real-world data analysis**, focusing on:

* Data modeling
* Data transformation
* Analytical thinking
* Business insight generation

---

⭐ This project will continue to evolve with more advanced SQL techniques and analytics.
