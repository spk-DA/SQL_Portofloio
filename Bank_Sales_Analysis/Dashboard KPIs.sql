- Module 6 – Dashboard KPIs (91–100)
-- Total Customers
select count(customer_name) as total_customers from bank_transactions ;
-- Total Transactions
select count(transaction_id) as total_transactions from bank_transactions ;
-- Total Business total deposits and given loan

select customer_name,transaction_type,sum(transaction_amount) ,loan_status from bank_transactions
where transaction_type ="Deposit" and loan_status ="Approved"  group by customer_name,transaction_amount ;
-- Total Deposits
select customer_name,transaction_type,transaction_amount,count(transaction_id) as total from bank_transactions
where transaction_type ="Deposit" group by customer_name,transaction_amount ; 
-- Total Withdrawals
select customer_name,transaction_type,transaction_amount,count(transaction_id) as total from bank_transactions
where transaction_type ="Withdrawal" group by customer_name,transaction_amount ;
-- Average Transaction
select customer_name,round(avg(transaction_amount),2) as avg from bank_transactions group by customer_name ;
-- Average Balance
select customer_name,round(avg(balance_after_transaction),2) as avg from bank_transactions group by customer_name ;
-- Highest Transaction
select customer_name,round(max(transaction_amount),2) as avg from bank_transactions group by customer_name ;
-- Best Branch
select branch_name, sum(balance_after_transaction) as total from bank_transactions group by branch_name;
-- Best Customer
select customer_name,sum(transaction_amount) as total from bank_transactions froup group by customer_name;
select * from bank_transactions ;
