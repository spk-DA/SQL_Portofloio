1. Find the total bank business by branch.
SELECT branch_name,
SUM(CASE WHEN transaction_type = 'Deposit' THEN transaction_amount ELSE 0 END) AS total_deposits,
SUM(transaction_amount) AS total_business_volume
FROM bank_transactions
GROUP BY branch_name;

2. Find the grand total of all deposits.
SELECT SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit';

3. Find the total deposits per customer.
SELECT customer_name,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY customer_name;

4. Find the total deposits by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY branch_name;

5. Find the monthly total deposits.
SELECT YEAR(transaction_date) AS year,
MONTHNAME(transaction_date) AS month,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY YEAR(transaction_date), MONTH(transaction_date), MONTHNAME(transaction_date);

6. Find the total deposits by payment channel.
SELECT payment_channel,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY payment_channel;

7. Find the grand total of all withdrawals.
SELECT SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal';

8. Find the total withdrawals by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY branch_name;

9. Find the total withdrawals by customer.
SELECT customer_name,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY customer_name;

10. Find the monthly withdrawal trends.
SELECT YEAR(transaction_date) AS year,
MONTHNAME(transaction_date) AS month,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY YEAR(transaction_date), MONTH(transaction_date), MONTHNAME(transaction_date);

11. Find the average transaction amount for each customer.
SELECT customer_name,
ROUND(AVG(transaction_amount), 2) AS average_transaction
FROM bank_transactions
GROUP BY customer_name;

12. Find the highest transaction amount.
SELECT MAX(transaction_amount) AS highest_transaction
FROM bank_transactions;

13. Find the highest transaction with customer and transaction details.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
ORDER BY transaction_amount DESC
LIMIT 1;

14. Find the highest transaction for each customer.
SELECT customer_name,
MAX(transaction_amount) AS personal_highest
FROM bank_transactions
GROUP BY customer_name
ORDER BY personal_highest DESC;

15. Find the lowest transaction for each customer.
SELECT customer_name,
MIN(transaction_amount) AS personal_min
FROM bank_transactions
GROUP BY customer_name
ORDER BY personal_min ASC;

16. Find the overall lowest transaction amount.
SELECT MIN(transaction_amount) AS lowest_transaction
FROM bank_transactions;

17. Find the total business by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name;

18. Find the total business by city.
SELECT city,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY city;

19. Find the total business by state.
SELECT state,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY state;

20. Find the total business by account type.
SELECT account_type,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY account_type;

21. Find the total business by customer segment.
SELECT customer_segment,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_segment;

22. Find the total business by gender.
SELECT gender,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY gender;

23. Find the total business by occupation.
SELECT occupation,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY occupation;

24. Find the average balance for each customer.
SELECT customer_name,
ROUND(AVG(balance_after_transaction), 2) AS average_balance
FROM bank_transactions
GROUP BY customer_name;

25. Find the average credit score for each customer.
SELECT customer_name,
ROUND(AVG(credit_score), 2) AS average_credit_score
FROM bank_transactions
GROUP BY customer_name;

26. Find the maximum balance for each customer.
SELECT customer_name,
MAX(balance_after_transaction) AS maximum_balance
FROM bank_transactions
GROUP BY customer_name;

27. Find the minimum balance for each customer.
SELECT customer_name,
MIN(balance_after_transaction) AS minimum_balance
FROM bank_transactions
GROUP BY customer_name;

28. Find the monthly business and quarter.
SELECT MONTH(transaction_date) AS month,
QUARTER(transaction_date) AS quarter,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY MONTH(transaction_date), QUARTER(transaction_date);

29. Find the yearly business.
SELECT YEAR(transaction_date) AS year,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY YEAR(transaction_date);
