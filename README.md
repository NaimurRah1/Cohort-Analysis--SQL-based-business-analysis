# Cohort Analysis – SQL Based Analysis

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
![Python](https://img.shields.io/badge/ETL-Python-green)

**Author:** Naimur Rahman  
**Affiliation:** MSc, BSc – Jagannath University, Dhaka  

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort1.jpeg)

---

## 📌 Project Description
This project demonstrates a **SQL-based cohort analysis** to understand **customer behavior over time**, focusing on **retention**, **churn**, and **customer loyalty**.

Python is used for data ingestion and table creation, while **PostgreSQL SQL queries** are used for analysis.

---

## 🎯 Objectives
- Create customer cohorts based on first purchase month
- Measure customer retention over time
- Identify churned customers
- Identify loyal customers (active for 3+ months)
- Support data-driven business decisions
  
![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort2.jpeg)

---

## 🛠️ Tech Stack
- **Python** – Data import & ETL
- **PostgreSQL** – Database
- **SQL** – Cohort, churn & retention analysis

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort3.jpeg)

---

## 🗂️ Dataset Overview
Tables imported into PostgreSQL:
- customers  
- orders  
- order_items  
- products  
- categories  
- inventory  
- marketing_campaigns  
- stores  

📌 **Used for cohort analysis:**
- `orders.customer_id`
- `orders.order_date`

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort4.jpeg)

---

## 🔄 Workflow
1. Load data using Python
2. Create tables in PostgreSQL
3. Insert records
4. Execute SQL queries
5. Analyze cohort output
6. Present insights using slides

---

### Churn Analysis

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort5.jpeg)

**Description:** This analysis identifies customers who purchased in January 2025 but did not return in February 2025, classifying them as churned customers.

**Insight:** These customers represent early-stage churn and highlight retention weaknesses.

**Recommendation:** Businesses should target these users with re-engagement strategies to improve retention.
