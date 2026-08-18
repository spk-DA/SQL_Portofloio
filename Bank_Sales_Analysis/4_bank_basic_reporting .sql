-- Module 1 – Basic Reporting (1–20)
-- Display all customers.
select customer_name from bank_transactions;
-- Display all transactions.
select * from bank_transactions ;
-- Show deposits only.
select customer_name, transaction_type from bank_transactions where transaction_type="Deposit";
-- Show withdrawals only.

select customer_name, transaction_type from bank_transactions where transaction_type="Withdrawal";
-- Find transactions above or equal ₹50,000.
select customer_name ,transaction_amount from bank_transactions where transaction_amount>=50000 ;
-- List customers from Delhi.
select customer_name , city from bank_transactions where city="Delhi";
-- Display Savings accounts.
select customer_name,account_type from bank_transactions where account_type="Savings";
 -- Display Current accounts.
select customer_name, account_type from bank_transactions where account_type="Current";
-- Find female customers.
select customer_name,gender from  bank_transactions where gender="Female";

-- Find customers older than 60. 
select customer_name ,age from bank_transactions where age > 60 ;
-- Show all UPI transactions.
select customer_name,payment_channel from bank_transactions where payment_channel="UPI";
-- Show ATM transactions.
select customer_name,payment_channel from bank_transactions where payment_channel="ATM";
-- Show Cheque transactions.
select customer_name,payment_channel from bank_transactions where payment_channel="Cheque";
-- Show Net Banking transactions.
select customer_name,payment_channel from bank_transactions where payment_channel="Net Banking";
-- Display transactions in January.
select customer_name,transaction_amount,transaction_date as month from bank_transactions where month(transaction_date) =1 ;
select customer_name,transaction_date from bank_transactions ;
-- Sort by transaction amount.
select * from bank_transactions order by transaction_amount desc; 
-- Display unique cities.
select distinct city from bank_transactions ;
-- Display unique branches.
select distinct branch_name from bank_transactions ;
-- Count total customers.
select customer_name,count(customer_name) from bank_transactions  group by customer_name;
-- Count total transactions.
select customer_name,count(transaction_amount) from bank_transactions group by customer_name ;
