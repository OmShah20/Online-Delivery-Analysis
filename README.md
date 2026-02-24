🚀 Food Delivery Data Analytics Project
📌 Project Overview

This project analyzes a Food Delivery dataset using SQL and Power BI to generate business insights related to orders, customers, restaurants, and delivery performance.

The objective of this project is to:

Design a proper Fact & Dimension Data Model

Perform SQL-based data analysis

Build a professional Power BI dashboard

Extract business KPIs

Generate operational and revenue insights

This project demonstrates real-world Data Analyst workflow:

Data Cleaning → SQL Analysis → Data Modeling → KPI Creation → Dashboard Visualization

🛠 Tech Stack

SQL (MySQL) – Data querying & transformation

Power BI – Data modeling & dashboard creation

Power Query – Data cleaning & transformation

DAX – KPI & Measure creation

CSV Dataset – Raw data source

📂 Dataset Structure

The dataset contains transactional food delivery order data.

🔹 Main Columns

Order_ID

User_ID

Restaurant_ID

Driver_ID

Item_Name

Quantity

Total_Price

Order_Time

Delivery_Time

Delivery_Duration_Minutes

Order_Status

City

🏗 Data Model (Star Schema)

This project follows a Star Schema structure.

⭐ Fact Table
🟢 Fact_Orders

Contains transactional data:

Order_ID

User_ID (FK)

Restaurant_ID (FK)

Driver_ID (FK)

Quantity

Total_Price

Delivery_Duration

Order_Status

🌟 Dimension Tables
🔵 Dim_Users

User_ID

City

🔵 Dim_Restaurants

Restaurant_ID

Restaurant Name

Location

🔵 Dim_Drivers

Driver_ID

Driver Details

🔵 Dim_Date (Optional for time intelligence)

Date

Month

Year

Quarter

📊 Key Performance Indicators (KPIs)
📦 Order KPIs

Total Orders

Cancelled Orders

Delivered Orders

Late Orders

Order Success Rate

💰 Revenue KPIs

Total Revenue

Average Order Value

Revenue per Restaurant

Revenue by City

🚚 Delivery KPIs

Average Delivery Time

Late Delivery %

On-Time Delivery Rate

Delivery Performance by Driver

📈 Dashboard Pages Structure
📄 Page 1 – Executive Overview

KPI Cards:

Total Orders

Total Revenue

Avg Delivery Time

Late Delivery %

Line Chart → Orders Trend (Monthly)

Donut Chart → Order Status Distribution

Bar Chart → Revenue by City

📄 Page 2 – Sales & Customer Insights

Column Chart → Revenue by Restaurant

Bar Chart → Orders by Restaurant

Map Visual → Customer Distribution

Top Performing Restaurants

📄 Page 3 – Driver & Operations

Avg Delivery Time by Driver

Late Orders by Driver

Driver Performance Ranking

Order Status Breakdown

🧮 Sample DAX Measures
Total Orders = COUNT(Fact_Orders[Order_ID])

Total Revenue = SUM(Fact_Orders[Total_Price])

Late Orders =
CALCULATE(
    COUNT(Fact_Orders[Order_ID]),
    Fact_Orders[Order_Status] = "Late"
)

Late Delivery % =
DIVIDE([Late Orders], [Total Orders], 0)

Average Delivery Time =
AVERAGE(Fact_Orders[Delivery_Duration_Minutes])
🧠 Business Insights Extracted

Identified high revenue restaurants

Analyzed delivery delays

Evaluated driver performance

Measured order success rate

Compared city-wise revenue performance

📷 Screenshots

Add screenshots in this structure:

/screenshots
    overview.png
    sales_customer.png
    driver_operations.png

Then display in README:

## Dashboard Preview

![Overview](screenshots/overview.png)
![Sales Insights](screenshots/sales_customer.png)
![Driver Operations](screenshots/driver_operations.png)
▶ How to Run This Project
Step 1: SQL Analysis

Import dataset into MySQL

Run Order_Analysis.sql queries

Step 2: Power BI

Open .pbix file

Check data model relationships

Refresh dataset

Review dashboard pages

📌 Learning Outcomes

✔ Star Schema Modeling
✔ SQL Aggregations & Joins
✔ DAX Measures & Calculations
✔ KPI Building
✔ Professional Dashboard Design
✔ Business Insight Generation
