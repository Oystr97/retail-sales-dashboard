----------Retail Sales Performance & Customer Behavior Analysis----------

use sm_sales;
select*from sales_data;
-----Total Sales (SUM of total_price), Average Order value-------
select sum(total_price) as Total_Sale, avg(total_price) as Avg_Order_Value from sales_data;
-----Total Quantity Sold-----
select sum(quantity) as total_quantity_sold from sales_data;
-----Top 3 Product by Total Sales Amount------
select product_name, sum(total_price) as Product_revenue from sales_data group by product_name order by Product_Revenue desc limit 3;
-----Cities with Revenue-------
select city, sum(total_price) as City_Revenue from sales_data group by city order by City_Revenue desc;
----Customer Segmentation-----
select customer_type, count(*) as total_sales, sum(total_price) as Revenue from sales_data group by customer_type;
----Gender Based Purchased Behaviour-----
select gender, product_category, sum(total_price) as Revenue from Sales_data group by gender, product_category order by product_category;
select gender, sum(total_price) as Revenue from Sales_data group by gender order by revenue desc;
----Branch wise Performance-----
select Branch, sum(total_price) as Revenue from sales_data group by Branch;
----Product Profitability Analysis------
select product_name, avg(Total_price) as Avg_revenue from sales_data group by Product_name ORDER by Avg_Revenue Desc;
