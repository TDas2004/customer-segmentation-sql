# Customer Segmentation & Marketing Campaign Analysis using SQL

## 📌 Project Overview

This project analyzes a real-world marketing campaign dataset using PostgreSQL and SQL to understand customer behavior, spending patterns, campaign effectiveness, and retention strategies.

The dataset was initially cleaned using Python, and this project extends that work by building a structured SQL-based system including database design, ETL pipeline, and multi-level analysis (Basic → Intermediate → Advanced).

---

## 🎯 Project Objectives

- Design a normalized relational database  
- Build an ETL pipeline using SQL  
- Perform analytical queries to extract insights  
- Analyze customer behavior and spending patterns  
- Evaluate marketing campaign effectiveness  
- Study customer retention and complaint behavior  

---

## 🧰 Technologies Used

- PostgreSQL  
- SQL  

### Pre-processing

- Python  
- Pandas  
- NumPy  
- Jupyter Notebook  

---

## 🗂️ Dataset Information

**Dataset:** Marketing Campaign Data (Kaggle)

### Key Features

- Customer demographics (income, education, marital status)  
- Household details (kids, teens)  
- Product spending categories  
- Purchase channels (Web, Store, Catalog)  
- Campaign responses (Cmp1–Cmp5)  
- Complaint records  

---

## 🏗️ Database Design

The dataset was normalized into the following tables:

- `customers` — demographic data  
- `spending` — product category spending  
- `purchases` — purchase behavior across channels  
- `campaigns` — campaign response data  
- `complaints` — complaint records  
- `raw_customers` — staging table for ETL  

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

### Steps

1. Load CSV into staging table  
2. Transform data using SQL  
3. Insert into normalized tables  
4. Validate data integrity  

---

## 📊 SQL Analysis

### ✅ Basic SQL Analysis

- Total number of customers  
- Duplicate ID validation  
- Missing income detection  
- Customer age statistics  
- Complaint analysis  
- Campaign acceptance rate  
- Customers with children  
- Education distribution  
- Average tenure  
- Campaign data validation  

---

### 🚀 Intermediate SQL Analysis

**Focus:** Customer behavior and spending insights

#### 💰 Spending Analysis

- Total spending per customer  
- Highest revenue-generating product category  
- Average spending by category  
- Zero spending vs purchase behavior  

#### 👨‍👩‍👧 Customer Behavior

- Income vs total spending relationship  
- Spending comparison (with vs without children)  
- Product preference by household type  

#### 🛒 Purchase Behavior

- Average purchases per channel  
- Most used purchase channel  
- Channel preference by income group  

#### 🌐 Web & Engagement

- Web visits vs actual purchases  
- Engagement vs conversion gap  

#### 🎯 Deal Analysis

- Deal-dependent customers  
- Spending vs discount usage  
- Revenue contribution of deal-driven customers  

---

## 🧠 Advanced SQL Analysis

**Focus:** Campaign effectiveness and retention strategy

### 📢 Campaign Effectiveness

- Which campaign (Cmp1–Cmp5) has the highest acceptance rate  
- Which campaign generates the highest average customer spending  
- Do campaign responders spend more than non-responders  

### 💰 Revenue Impact

- Spending comparison: responders vs non-responders  
- Impact of campaign acceptance on overall revenue  

### 🔍 Customer Targeting

- Which demographics respond best to marketing campaigns  
- Influence of income and education on campaign success  

### ⚠️ Complaint Analysis

- Are customers with complaints still high-value customers  
- Percentage of high-spending customers who complain  
- Complaint rates by income and education level  

### 🔄 Retention Strategy

- Should complaining customers be retained  
- Are campaign responders less likely to complain  

---

## 📈 Key Business Insights

- High acceptance does not always mean high revenue  
- Campaign responders generally spend more  
- High-value customers can still generate complaints  
- Complaint behavior varies across income and education segments  
- Engagement does not always convert into purchases  
- Retaining high-value complaining customers is critical  

---

## 📁 Project Structure

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
├── sql_analysis_basics
│ └── basic queries
│
├── sql_analysis_intermediate
│ └── behavior & segmentation queries
│
├── sql_analysis_advanced
│ └── campaign & retention queries
│
└── README.md

```

## 🧠 Skills Demonstrated

- SQL (Joins, CTEs, Subqueries, Aggregations)  
- Data Modeling & Normalization  
- ETL Pipeline Development  
- Customer Segmentation  
- Business Insight Generation  
- Analytical Thinking  

---

## 🔮 Future Enhancements (Ongoing Work 🚀)

This project is actively being expanded with more advanced SQL concepts and business-focused analysis.

Upcoming additions include:

- Window functions and advanced customer segmentation  
- Revenue contribution and percentile-based analysis  
- Campaign performance across customer segments  
- Business decision-making and strategy-driven insights  

These enhancements will be added gradually as the project evolves.

---

## 📌 Project Status

🚧 Ongoing Project — Advanced SQL and business analytics sections are currently in progress and will be integrated step by step.

---

## 💡 Project Goal

To build strong SQL expertise and gain hands-on experience in real-world marketing analytics, customer segmentation, and data-driven decision-making.

---

## 🎯 Conclusion

This project demonstrates the ability to design relational databases, build ETL pipelines, perform advanced SQL analysis, and generate actionable business insights for marketing and customer retention.

---

⭐ This project is continuously evolving with advanced SQL techniques and business-focused analytics.