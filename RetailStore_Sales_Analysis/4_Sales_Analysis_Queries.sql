-- Display all records.
select * from store_sales;
-- Show customer name, city and product purchased
select customer_name,city,product_name from store_sales ;
-- Find all customers from Delhi.
select * from store_sales where city="Delhi";
-- Display all Electronics products.
select product_name,category from store_sales where Category="Electronics";
-- Find sales greater than ₹30,000.
select * from store_sales where total_amount >30000;
-- Show customers aged above 30 years.
select customer_name,age from store_sales where age >30;
-- Sort records by highest sale amount.
select * from store_sales order by total_amount desc ;
-- Display the first 5 records.
select * from store_sales LIMIT 5 ;
-- Find customers whose names start with 'R'.
select * from store_sales where customer_name like "R%";
-- Display all unique cities.
select distinct city from store_sales ;


-- Calculate total sales revenue.
select sum(total_amount) from store_sales ;
-- Calculate average sales amount.
select avg(total_amount) from store_sales ;
-- Find the maximum sale amount.
select max(total_amount) from store_sales ;
-- Find the minimum sale amount.
select min(total_amount) from store_sales ;
-- Count total orders.
select count(sale_id) from store_sales ;
-- Display city-wise total sales.
select city,sum(total_amount) from store_sales group by city;
select * from store_sales;
-- Display category-wise revenue.
select category,sum(total_amount) from store_sales group by category;

-- Display salesperson-wise revenue.
select salesperson, sum(total_amount) from store_sales group by salesperson;
-- Count orders by payment mode.
select payment_mode,count(order_date) from store_sales group by payment_mode;
-- Find customers who have placed more than one order
select customer_name,count(order_date) from store_sales group by customer_name ; 

-- Find the city with the highest sales.
select city, sum(total_amount)  from  store_sales group by city order by sum(total_amount) DESC LIMIT 1 ;
select * from store_sales;
-- Find the category generating the highest revenue.
select category,sum(total_amount) from store_sales group by category  order by sum(total_amount) DESC LIMIT 1 ;
select category,sum(total_amount) as total_revenue from store_sales group by category  order by total_revenue DESC LIMIT 1 ;

-- Display monthly sales revenue.

select order_date,sum(total_amount) from store_sales group by order_date ;

-- Find the top 5 highest sales transactions.
select category,total_amount  from store_sales order by total_amount DESC limit 5;

-- Display product-wise quantity sold.
select product_name,sum(quantity) from store_sales group by product_name ;

-- Calculate average sales by city.
select city,avg (total_amount) as avgsales from store_sales group by city ;

-- Show gross amount before discount for every order.
select category,unit_price*quantity as gross_amount from store_sales order by gross_amount desc  ;

-- List customers who paid using UPI.
select customer_name,payment_mode,total_amount from store_sales where payment_mode="UPI";

-- Find the most popular payment mode.
select sum(total_amount),payment_mode,count(payment_mode) as popular_mode from store_sales group by payment_mode order by popular_mode desc ; 

-- Display all Furniture products costing more than ₹20,000.
select category,product_name,total_amount from store_sales  where category="Furniture" and  total_amount >20000;

-- Find customers between ages 25 and 35.
select customer_name ,age from store_sales  where age between 25 and 35 ;

-- Display state-wise revenue.
select state,sum(total_amount) as revenue from store_sales group by state ;

-- Find the salesperson with the maximum revenue.
select salesperson,sum(total_amount) as max_revenue from store_sales group by salesperson order by max_revenue  desc ;

select * from store_sales;
