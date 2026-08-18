--  Total bank business.
select branch_name, sum(case when transaction_type="Deposit" then transaction_amount else 0 end) as total_deposit from bank_transactions group by branch_name ; 

SELECT branch_name,SUM(CASE WHEN transaction_type = 'Deposit' THEN transaction_amount ELSE 0 END) AS total_deposits,SUM(transaction_amount) AS total_business_volume
FROM bank_transactions GROUP BY branch_name;

-- Total deposits.
-- 1. Grand Total of All Deposits
select sum(transaction_amount) as total_deposit from bank_transactions where transaction_type="Deposit"  ;
-- 2. Total Deposits per Customer 
select customer_name, sum(transaction_amount) as total_deposit from bank_transactions where transaction_type="Deposit" group by customer_name ;
-- 3. Total Deposits by Branch
select branch_name,transaction_type,sum(transaction_amount) as total_deposit from bank_transactions where transaction_type="Deposit"  group by branch_name;
-- 4. Monthly Total Deposits
select  year(transaction_date) as year ,monthname(transaction_date) as month ,sum(transaction_amount) from bank_transactions where transaction_type= "Deposit" 
group by month,year ;

-- 5. Deposits by Payment Channel 
select payment_channel,sum(transaction_amount) as total_deposit from bank_transactions where transaction_type="Deposit" group by payment_channel;

-- Total withdrawals.
-- 1. Grand Total of All Withdrawals
select transaction_type,transaction_amount as total_withdraw from bank_transactions where transaction_type="Withdrawal";
-- 2. Branch-wise Total Withdrawals
select branch_name,transaction_type,sum(transaction_amount) as total_withdrawl from bank_transactions where transaction_type="Withdrawal" group by  branch_name ;
-- 3. Customer-wise Total Withdrawals
select customer_name,sum(transaction_amount) as cust_withdrawl ,transaction_type from bank_transactions where transaction_type="Withdrawal" group by customer_name ;
-- 4. Monthly Withdrawal Trends
select customer_name,monthname(transaction_date) as month,year(transaction_date) as year ,transaction_type from bank_transactions where transaction_type="Withdrawal";

-- Average transaction.
-- 1.Overall Average Transaction
select customer_name,round(avg(transaction_amount),2) as total_avgtransactions from bank_transactions group by customer_name; 
-- Highest transaction.
select max(transaction_amount) from bank_transactions ;
-- 2. Finding the Highest Transaction with Details
select customer_name,transaction_type,transaction_amount from bank_transactions order by transaction_amount desc limit 1;
-- 3. Highest Transaction Per Customer
SELECT customer_name, MAX(transaction_amount) AS personal_highest FROM bank_transactions GROUP BY customer_name ORDER BY personal_highest DESC;
-- Lowest transaction.

select customer_name,min(transaction_amount) as personal_min from bank_transactions group by customer_name order by personal_min asc limit 1 ;
select min(transaction_amount) as min_trans from bank_transactions ;
-- Branch-wise business. 
select branch_name,sum(transaction_amount)  from bank_transactions group by branch_name;
-- City-wise business.
select city,sum(transaction_amount) from bank_transactions group by city;
-- State-wise business.

select state,sum(transaction_amount) from bank_transactions group by state;
-- Account type-wise business.
select account_type,sum(transaction_amount) from bank_transactions group by account_type ;
-- Customer segment-wise business.
select customer_segment,sum(transaction_amount) from bank_transactions group by customer_segment;
-- Gender-wise business.
select gender,sum(transaction_amount) from bank_transactions group by gender ;
-- Occupation-wise business.
select occupation,sum(transaction_amount) from bank_transactions group by occupation;
-- Average balance.

select customer_name, round(avg(balance_after_transaction),2) from bank_transactions group by customer_name;
-- Average credit score.
select customer_name,round(avg(credit_score),2) from bank_transactions group by customer_name;
-- Maximum balance.
select customer_name,round(max(balance_after_transaction),2) from bank_transactions group by customer_name;
-- Minimum balance.
select customer_name,round(min(balance_after_transaction),2) from bank_transactions group by customer_name;
-- Monthly business.
select month(transaction_date) as month , quarter(transaction_date),transaction_amount as quarter from bank_transactions ;
-- Yearly business.
select year(transaction_date),transaction_amount from bank_transactions ;
