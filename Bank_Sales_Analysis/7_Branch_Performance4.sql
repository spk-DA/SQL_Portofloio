61. Find the highest-performing branch.
SELECT branch_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name
ORDER BY total_business DESC
LIMIT 1;

62. Find the branch with maximum deposits.
SELECT branch_name,
SUM(transaction_amount) AS total_deposits
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY branch_name
ORDER BY total_deposits DESC
LIMIT 1;

63. Find the branch with maximum withdrawals.
SELECT branch_name,
SUM(transaction_amount) AS total_withdrawals
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY branch_name
ORDER BY total_withdrawals DESC
LIMIT 1;

64. Find the average transaction amount by branch.
SELECT branch_name,
ROUND(AVG(transaction_amount), 2) AS average_transaction
FROM bank_transactions
GROUP BY branch_name;

65. Find the total customers by branch.
SELECT branch_name,
COUNT(DISTINCT customer_id) AS total_customers
FROM bank_transactions
GROUP BY branch_name;

66. Find the branch-wise average balance.
SELECT branch_name,
ROUND(AVG(balance_after_transaction), 2) AS average_balance
FROM bank_transactions
GROUP BY branch_name;

67. Find the branch-wise average credit score.
SELECT branch_name,
ROUND(AVG(credit_score), 2) AS average_credit_score
FROM bank_transactions
GROUP BY branch_name;

68. Find the branch-wise premium customers.
SELECT branch_name,
customer_segment,
COUNT(DISTINCT customer_id) AS total_premium_customers
FROM bank_transactions
WHERE customer_segment IN ('Gold', 'Platinum')
GROUP BY branch_name, customer_segment;

69. Find the branch-wise business growth.
SELECT branch_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name
ORDER BY total_business DESC;

70. Find the branch-wise cash transactions.
SELECT branch_name,
COUNT(transaction_id) AS total_cash_transactions
FROM bank_transactions
WHERE payment_channel = 'Cash'
GROUP BY branch_name;

71. Find the branch-wise digital transactions.
SELECT branch_name,
payment_channel,
COUNT(transaction_id) AS total_digital_transactions
FROM bank_transactions
WHERE payment_channel NOT IN ('Cash', 'ATM')
GROUP BY branch_name, payment_channel;

72. Perform branch-wise customer segment analysis.
SELECT branch_name,
customer_segment,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name, customer_segment;

73. Find the branch-wise gender ratio.
SELECT branch_name,
gender,
COUNT(DISTINCT customer_id) AS total_customers
FROM bank_transactions
GROUP BY branch_name, gender;

74. Perform branch-wise occupation analysis.
SELECT branch_name,
occupation,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name, occupation;

75. Find the branch with the highest average transaction amount.
SELECT branch_name,
ROUND(AVG(transaction_amount), 2) AS average_transaction
FROM bank_transactions
GROUP BY branch_name
ORDER BY average_transaction DESC
LIMIT 1;
