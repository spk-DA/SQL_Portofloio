-- Module 5 – Fraud & Risk Analytics 
-- Transactions above ₹2,00,000
select customer_name,transaction_amount from bank_transactions where transaction_amount >2000 ;
-- Cash deposits above ₹2,00,000.
select customer_name,transaction_type, transaction_amount from bank_transactions where transaction_type="Deposit" and transaction_amount >2000;
-- Cash withdrawals above ₹2,00,000.
select customer_name,transaction_type,transaction_amount from bank_transactions where transaction_type="Withdrawal" and transaction_amount >2000;
-- Customers with multiple high-value transactions.
select customer_name,transaction_amount from bank_transactions where transaction_amount >2000; 
-- Customers with low balance.
select customer_name,min(balance_after_transaction) as low_balance from bank_transactions group by customer_name order by low_balance asc;
-- Customers with credit score below 600.
select customer_name,min(credit_score) as low_score from bank_transactions group by customer_name having low_score <=600  ;  
-- Transactions during weekends.

select * from bank_transactions where weekday(transaction_date) >=5;
 select case when weekday(transaction_date) <5 then "Weekday" ELSE "Weekend" end as day_type, transaction_amount from bank_transactions ;
 -- Large withdrawals.
 select customer_name,transaction_type,transaction_amount from bank_transactions  where transaction_type= "Withdrawal" order by transaction_amount desc ;
 -- Large deposits.
  select customer_name,transaction_type,transaction_amount from bank_transactions  where transaction_type= "Deposit" order by transaction_amount desc ;
  -- Suspicious repeated transactions
  select customer_name,count(transaction_amount) as tra from bank_transactions group by customer_name having tra >0;
  -- Customers making many ATM withdrawals.
  
  select customer_name, payment_channel, transaction_type ,count(customer_id) as total_atm_withdrawal from bank_transactions
  where payment_channel="ATM" and transaction_type ="Withdrawal" group by customer_name having total_atm_withdrawal > 0;
  
  -- Customers making many UPI payments.
  select customer_name,payment_channel,transaction_type, count(transaction_id) as total_upi from bank_transactions 
  where payment_channel="UPI" and transaction_type ="Deposit" group by customer_name having total_upi > 0;
  
-- Branches with high-risk customers.
-- Customers with loan default status.
select customer_name,credit_score from bank_transactions where credit_score <=600 ;
