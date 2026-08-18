-- Module 4 – Branch Performance (61–75)
 -- Highest-performing branch.
 select branch_name,sum(transaction_amount) as high from bank_transactions group by branch_name order by high  desc limit 1;
-- Branch with maximum deposits.
 select branch_name,transaction_type,sum(transaction_amount) as max_deposit from bank_transactions where transaction_type="Deposit" group by branch_name ;
 -- Branch with maximum withdrawals.
 select branch_name,transaction_type,sum(transaction_amount) from bank_transactions where transaction_type="Withdrawal" group by branch_name ;
 -- Average transaction by branch.
 select branch_name,round(avg(transaction_amount),2)  from bank_transactions group by branch_name;
 -- Total customers by branch.\
 select branch_name,count(customer_name) as total from bank_transactions group by branch_name ;
 -- Branch-wise average balance.
 select branch_name,round(avg(balance_after_transaction),2) as avg from bank_transactions group by branch_name;
 -- Branch-wise credit score.
 select branch_name,sum(credit_score) from bank_transactions group by branch_name;
 -- Branch-wise premium customers.
 select branch_name,customer_segment,count(customer_id) from bank_transactions where customer_segment in ("Gold","Platinum") group by branch_name,customer_segment ;
 
-- Branch-wise business growth.
select branch_name, sum(balance_after_transaction) from bank_transactions group by branch_name;
-- Branch-wise cash transactions.
select branch_name, payment_channel from bank_transactions where payment_channel="Cash" group  by branch_name ;
-- Branch-wise digital transactions.
select branch_name, payment_channel,count(transaction_id) from bank_transactions where payment_channel not in ("Cash","ATM") group by branch_name,payment_channel ;
-- Branch-wise customer segment analysis.
select branch_name,customer_segment,sum(transaction_amount) from bank_transactions group by branch_name,customer_segment ;
-- Branch-wise gender ratio
select branch_name,gender,count(transaction_id) from bank_transactions group by branch_name,gender ;
-- Branch-wise occupation analysis.
select branch_name,occupation,sum(transaction_amount) as total from bank_transactions group by branch_name,occupation;
