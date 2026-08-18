Module 6 – Dashboard KPIs
  
91. Find the total number of customers.
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM bank_transactions;

92. Find the total number of transactions.
SELECT COUNT(transaction_id) AS total_transactions
FROM bank_transactions;

93. Find the total business, total deposits, and total approved loan amount.
SELECT
SUM(transaction_amount) AS total_business,
SUM(CASE WHEN transaction_type = 'Deposit' THEN transaction_amount ELSE 0 END) AS total_deposits,
SUM(CASE WHEN loan_status = 'Approved' THEN transaction_amount ELSE 0 END) AS total_approved_loan_amount
FROM bank_transactions;

94. Find the total deposits.
SELECT SUM(transaction_amount) AS total_deposits
FROM bank_transactions
WHERE transaction_type = 'Deposit';

95. Find the total withdrawals.
SELECT SUM(transaction_amount) AS total_withdrawals
FROM bank_transactions
WHERE transaction_type = 'Withdrawal';

96. Find the average transaction amount.
SELECT ROUND(AVG(transaction_amount), 2) AS average_transaction
FROM bank_transactions;

97. Find the average balance.
SELECT ROUND(AVG(balance_after_transaction), 2) AS average_balance
FROM bank_transactions;

98. Find the highest transaction amount.
SELECT MAX(transaction_amount) AS highest_transaction
FROM bank_transactions;

99. Find the best-performing branch based on total business.
SELECT branch_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name
ORDER BY total_business DESC
LIMIT 1;

100. Find the best customer based on total business.
SELECT customer_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_name
ORDER BY total_business DESC
LIMIT 1;
