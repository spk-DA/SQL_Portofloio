
-- Top 10 customers by business.
select customer_name,transaction_amount from bank_transactions order by transaction_amount desc limit 10;

-- Customers with more than five transactions.
select customer_name,count(customer_id) as total_trans from bank_transactions group by customer_name having total_trans>0;
-- Customers having business above ₹5,00,000.
select customer_name,sum(transaction_amount) as business from  bank_transactions  group by customer_name having business >40000;
-- Customers with low credit score.
select customer_name,min(credit_score) as low_creditscore from bank_transactions group by customer_name order by low_creditscore asc ;
-- Customers with high credit score.
select customer_name,max(credit_score) as high_creditscore from bank_transactions group by customer_name order by high_creditscore desc;
-- Senior citizen customers.
select customer_name,age from bank_transactions where age>=30 ;
-- Young customers.
select customer_name ,age from bank_transactions where age<=35;
-- Premium customers.
select customer_name,customer_segment from bank_transactions where customer_segment in ("Gold","Platinum");
-- Salary account customers.
select customer_name,account_type,transaction_amount from bank_transactions where account_type="";
-- Business account customers.
select customer_name,account_type,occupation from bank_transactions where account_type like "Current%"; 
-- Average customer age.
select customer_name,avg(age) from bank_transactions group by customer_name ;
-- Age-group analysis.
select case when age <18 then "youth" when age between 18 and 25 then "Adult" when age between 25 and 35 then "Employe" 
            when age between 35 and 60 then "Middle" else  "Senior"  end as age_group, count(*) as total_customers 
            from bank_transactions group by age_group;
            
-- City-wise customer count.
select count(customer_name)as cust_count ,city from bank_transactions group by city;     

-- State-wise customer count.
select state,count(customer_id) from bank_transactions group by state;     
-- Customer segment distribution.
select customer_segment,count(customer_name) from bank_transactions group by customer_segment;
-- Occupation distribution
select count(customer_id),occupation from bank_transactions group by  occupation;
-- Customers using only UPI.
select customer_name, payment_channel from bank_transactions where payment_channel="UPI" ;
 -- Customers using only ATM.
 select customer_name, payment_channel from bank_transactions where payment_channel="ATM" ;
-- Customers using Net Banking.
select customer_name, payment_channel from bank_transactions where payment_channel="Net Banking" ;
 -- Customers with highest balance.
 select customer_name,max(balance_after_transaction) from bank_transactions group by customer_name;
