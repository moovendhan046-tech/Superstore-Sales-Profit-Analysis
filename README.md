Superstore Sales & Profit Analytics Dashboard — Project 2

Level: Intermediate
Tools Used: SQL • Power BI • Excel/CSV
Domain: Retail Sales Analytics

📌 Project Overview
This project analyzes Superstore retail data to uncover insights related to sales performance, profitability, discount impact, product contribution, and business risk areas.

The workflow covers the complete analytics lifecycle:
Raw dataset handling
Data cleaning using SQL
Data transformation
KPI calculation
Dashboard design in Power BI
Business insight storytelling
This is my second analytics project, built after completing a basic dashboard, with deeper focus on profitability analytics and SQL-driven data modeling.


🧠 Data Preparation & SQL Work

Significant effort was spent in backend preparation before visualization.
Key SQL Tasks Performed
Date datatype conversion (Order Date, Ship Date)
STR_TO_DATE error handling
Null value handling
Profit vs Loss separation logic
Discount aggregation analysis
Profit margin calculation
Product-level contribution queries
Loss-making product identification
Example transformations:
Converting text → Date format
Creating Year / Month extraction
Aggregating profit conditionally
Grouping & ranking products

These steps ensured the dataset was analysis-ready before Power BI import.
📊 Dashboard Structure & Visual Logic

The dashboard is divided into multiple analytical views.

1️⃣ KPI Overview Page
Visual Type: KPI Cards
Metrics Displayed:
Total Sales
Total Profit
Total Orders
Total Stock
Total Loss
Purpose:
Provides a high-level business snapshot for quick decision-making.
Acts as the executive summary layer of the dashboard.


2️⃣ Profit vs Loss Distribution
Visual Type: Pie Chart
Metrics:
Profit %
Loss %
Purpose:
Shows overall business sustainability.
Answers:
Is the company operating profitably or absorbing heavy losses?


3️⃣ Profit Margin by Segment
Visual Type: Pie Chart
Segments:
Consumer
Corporate
Home Office
Purpose:
Identifies which customer segment delivers better profitability efficiency — not just revenue.


4️⃣ Impact of Discount on Profitability
Visual Type: Column Chart
Axes:
X → Discount Levels
Y → Profit / Loss
Purpose:
Analyzes how increasing discounts affect profit.
Key business insight:
Higher discounts tend to reduce profitability and may drive losses at extreme levels.

5️⃣ Annual Sales & Profit Performance
Visual Type: Clustered Column Chart
Axes:
X → Year
Y → Sales & Profit
Purpose:
Compares revenue vs profitability growth year-by-year.
Answers:
Are profits scaling proportionally with sales?

6️⃣ Annual Profit Margin Trend
Visual Type: Line Chart (Updated)
Axes:
X → Year
Y → Profit Margin %
Purpose:
Tracks profitability efficiency over time.
Why line chart:
Reveals trend direction
Highlights margin fluctuations
Shows operational improvement or decline
This replaced the earlier tabular KPI view for better time-series storytelling.

7️⃣ Top 10 Products by Profit Contribution

Visual Type: Horizontal Bar Chart
Metrics:
Product Name
Total Profit Contribution
Purpose:
Identifies high-performing products driving overall profitability.
Supports:
Inventory prioritization
Marketing focus
Product strategy decisions

⚙️ Technical Challenges Faced

This project involved multiple real-world struggles:
Datatype conversion failures
STR_TO_DATE errors
Incorrect datetime formats
Profit showing as NULL / 0
Loss vs Profit aggregation confusion
Rewriting SQL queries multiple times
Re-running stored queries
Dataset re-imports
KPI recalculation issues
These debugging cycles significantly improved problem-solving ability.

🧩 Key Learning Outcomes

Writing conditional aggregation SQL
Handling profit/loss in same column
Discount impact modeling
Profit margin computation
Data cleaning before visualization
Choosing correct chart types
KPI dashboard structuring
Time-series trend analysis

📁 Repository Contents

SQL Query Files, 
Cleaned CSV Datasets,
Power BI (.pbix) Dashboard File,
README Documentation.


🚀 Project Positioning

This project demonstrates intermediate-level analytics capability because it includes:
Backend SQL transformation
Business KPI modeling
Multi-page dashboard design
Profitability analytics
Decision-oriented visual storytelling
It moves beyond basic sales charts into margin, discount, and contribution analysis.
