76. Find transactions above ₹2,00,000.
SELECT customer_name,
transaction_amount
FROM bank_transactions
WHERE transaction_amount > 200000;

77. Find cash deposits above ₹2,00,000.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
WHERE payment_channel = 'Cash'
AND transaction_type = 'Deposit'
AND transaction_amount > 200000;

78. Find cash withdrawals above ₹2,00,000.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
WHERE payment_channel = 'Cash'
AND transaction_type = 'Withdrawal'
AND transaction_amount > 200000;

79. Find customers with multiple high-value transactions.
SELECT customer_name,
COUNT(transaction_id) AS high_value_transactions
FROM bank_transactions
WHERE transaction_amount > 200000
GROUP BY customer_name
HAVING COUNT(transaction_id) > 1;

80. Find customers with low balance.
SELECT customer_name,
MIN(balance_after_transaction) AS low_balance
FROM bank_transactions
GROUP BY customer_name
ORDER BY low_balance ASC;

81. Find customers with credit scores below 600.
SELECT customer_name,
MIN(credit_score) AS low_credit_score
FROM bank_transactions
GROUP BY customer_name
HAVING MIN(credit_score) < 600;

82. Find transactions made during weekends.
SELECT *
FROM bank_transactions
WHERE WEEKDAY(transaction_date) >= 5;

83. Classify transactions as weekday or weekend.
SELECT
CASE
WHEN WEEKDAY(transaction_date) < 5 THEN 'Weekday'
ELSE 'Weekend'
END AS day_type,
COUNT(transaction_id) AS total_transactions,
SUM(transaction_amount) AS total_amount
FROM bank_transactions
GROUP BY day_type;

84. Find large withdrawals.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
ORDER BY transaction_amount DESC;

85. Find large deposits.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
WHERE transaction_type = 'Deposit'
ORDER BY transaction_amount DESC;

86. Find suspicious repeated transactions.
SELECT customer_name,
transaction_amount,
COUNT(*) AS transaction_count
FROM bank_transactions
GROUP BY customer_name, transaction_amount
HAVING COUNT(*) > 1;

87. Find customers making many ATM withdrawals.
SELECT customer_name,
COUNT(transaction_id) AS total_atm_withdrawals
FROM bank_transactions
WHERE payment_channel = 'ATM'
AND transaction_type = 'Withdrawal'
GROUP BY customer_name
HAVING COUNT(transaction_id) > 1;

88. Find customers making many UPI payments.
SELECT customer_name,
COUNT(transaction_id) AS total_upi_payments
FROM bank_transactions
WHERE payment_channel = 'UPI'
GROUP BY customer_name
HAVING COUNT(transaction_id) > 1;

89. Find branches with high-risk customers.
SELECT branch_name,
COUNT(DISTINCT customer_id) AS high_risk_customers
FROM bank_transactions
WHERE credit_score < 600
GROUP BY branch_name
ORDER BY high_risk_customers DESC;

90. Find customers with loan default status.
SELECT customer_name,
credit_score
FROM bank_transactions
WHERE credit_score <= 600;
