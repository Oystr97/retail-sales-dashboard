# 🧾 Retail Sales Analytics Dashboard Using SQL & Excel

## 📘 Project Description
This project analyzes structured retail sales transaction data to uncover key performance metrics, customer behavior insights, and product-level performance. 

- SQL is used to extract and summarize the data from a MySQL database  
- Excel (with Pivot Charts) is used for visualization  

This simulates a real-world scenario where a **Sales Analyst** builds a dashboard and provides actionable insights to help improve business decisions.

---

## 🛠 Tools Used
- **MySQL** – for data extraction using SQL queries  
- **Excel** – for pivot charts and visual storytelling

---

## 🎯 Project Objectives
- Extract key sales KPIs using SQL  
- Analyze revenue by city, branch, product, and customer type  
- Identify top-performing products and locations  
- Segment customers by gender and membership status  
- Visualize business insights in a dashboard format  

---

## 📈 Key SQL Queries & Metrics

| 📊 Metric | 💻 SQL Snippet |
|----------|----------------|
| **Total Sales** (Total revenue from all transactions) | `SELECT SUM(total_price) AS Total_Sales FROM sales_data;` |
| **Average Order Value** | `SELECT AVG(total_price) AS Avg_Order_Value FROM sales_data;` |
| **Total Quantity Sold** | `SELECT SUM(quantity) AS Total_Quant_Sold FROM sales_data;` |
| **Top 3 Products by Revenue** | `SELECT product_name, SUM(total_price) AS Product_revenue FROM sales_data GROUP BY product_name ORDER BY Product_Revenue DESC LIMIT 3;` |
| **Cities by Revenue** | `SELECT city, SUM(total_price) AS City_Revenue FROM sales_data GROUP BY city ORDER BY City_Revenue DESC;` |
| **Gender Purchase Comparison** | `SELECT gender, product_category, SUM(total_price) AS Revenue FROM sales_data GROUP BY gender, product_category ORDER BY product_category;` |
| **Customer Type Segmentation** | `SELECT customer_type, COUNT(*) AS total_sales, SUM(total_price) AS Revenue FROM sales_data GROUP BY customer_type;` |
| **Branch Revenue Performance** | `SELECT branch, SUM(total_price) AS Revenue FROM sales_data GROUP BY branch;` |
| **Product Profitability Analysis** | `SELECT product_name, AVG(total_price) AS Avg_revenue FROM sales_data GROUP BY product_name ORDER BY Avg_revenue DESC;` |

---

## 💡 Business Insights

- 🏙 **New York** leads in total sales — ideal for campaign targeting  
- 💧 **Shampoo** and 📓 **Notebook** are high-revenue products — suitable for bundling  
- 🏢 **Branch A** consistently outperforms others — investigate operational efficiency  
- 👥 **Members spend more than normal customers** — consider expanding loyalty programs  
- 🚻 **Minimal gender difference in spending** — inclusive targeting is effective  

---

## 📎 Credits
- Dataset Source: Modified from original [Kaggle Dataset](https://www.kaggle.com/)  
- Visuals created using Excel Pivot Charts  

---

