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

## Churn Analysis

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort5.jpeg)

**Description:** This analysis identifies customers who purchased in January 2025 but did not return in February 2025, classifying them as churned customers.

**Insight:** These customers represent early-stage churn and highlight retention weaknesses.

**Recommendation:** Businesses should target these users with re-engagement strategies to improve retention.

---
## Retention Analysis

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort6.jpeg)

**Description:** This analysis identifies customers who placed orders in January 2025 and also returned in February 2025.

**Insight:** These customers represent successfully retained users and indicate effective engagement strategies.

**Recommendation:** Focus on strengthening relationships with retained customers to improve long-term customer lifetime value.

---

## Cohort Analysis Query

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort7.jpeg)

**Description:** This SQL query assigns customers to cohorts based on their first purchase month and tracks their activity across subsequent months.

---

# Cohort Analysis output

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort9.jpeg)

This section presents the results of our **cohort analysis**, which tracks user engagement over time.

## Overview
- **Cohort Month:** The month when users first engaged with the platform.
- **Months 1–5:** Subsequent months showing how many users from the original cohort returned or remained active.
- **Purpose:** To understand **user retention trends** and identify patterns of engagement across cohorts.

## Retention Table & Chart
The table below summarizes **user retention** across months 1–5 for each cohort month, showing how many users who first joined in a given month continued to engage in subsequent months.

The line chart visualizes these retention trends, making it easy to compare cohort performance over time. Peaks and drops in the lines highlight **which cohorts retained users better**, providing actionable insights for user engagement strategies.

> From the chart, it is easy to see how user retention evolves over time for each cohort, helping us identify trends and patterns in engagement.

---

# Customer Retention Analysis: Customers Active in ≥3 Months

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort8.jpeg)
This analysis identifies **customers who returned and made purchases in at least 3 different months** within the first five months after their first order. It helps understand **loyalty and engagement trends**.

---

## Purpose
- To track **repeat customers** over time.  
- To identify customers showing **consistent engagement**.  
- To provide actionable insights for **marketing campaigns, loyalty programs, or retention strategies**.

---

# Loyal Customers Analysis

![Slide 1 – Cohort Overview](https://raw.githubusercontent.com/NaimurRah1/Cohort-Analysis--SQL-based-business-analysis/main/coho/cohort10.jpeg)
This dataset includes **customers who have been active for at least 3 months**, along with their purchasing information.  

These customers can be classified as **loyal customers**, as they consistently return over time. Businesses can target them with **special discounts, reward programs, or exclusive benefits** to improve retention and increase long-term revenue.  

## SQL Query Overview
The query identifies customers who returned in **at least 3 different months** within the first five months after their first order. It also retrieves their **full name, email, and number of active months**.

### Output Example
| customer_id | full_name       | email               | number_of_month |
|------------:|----------------|-------------------|----------------|
| 101         | John Doe       | john@example.com  | 3              |
| 205         | Jane Smith     | jane@example.com  | 4              |
| 309         | Alice Johnson  | alice@example.com | 3              |

## Insights
- Loyal customers are highly engaged and likely to make repeated purchases.  
- Targeting this group with **personalized offers** can increase **retention and lifetime value**.  
- Tracking their activity helps identify **patterns in repeat purchasing behavior**.

----
