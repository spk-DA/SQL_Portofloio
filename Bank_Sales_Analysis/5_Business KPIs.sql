-- Module 2 – Business KPIs (21–40)

21. Find the total bank business by branch.
SELECT branch_name,
SUM(CASE WHEN transaction_type = 'Deposit' THEN transaction_amount ELSE 0 END) AS total_deposits,
SUM(transaction_amount) AS total_business_volume
FROM bank_transactions
GROUP BY branch_name;

22. Find the grand total of all deposits.
SELECT SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit';

23. Find the total deposits per customer.
SELECT customer_name,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY customer_name;

24. Find the total deposits by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY branch_name;

25. Find the monthly total deposits.
SELECT YEAR(transaction_date) AS year,
MONTHNAME(transaction_date) AS month,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY YEAR(transaction_date), MONTH(transaction_date), MONTHNAME(transaction_date);

26. Find the total deposits by payment channel.
SELECT payment_channel,
SUM(transaction_amount) AS total_deposit
FROM bank_transactions
WHERE transaction_type = 'Deposit'
GROUP BY payment_channel;

27. Find the grand total of all withdrawals.
SELECT SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal';

28. Find the total withdrawals by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY branch_name;

29. Find the total withdrawals by customer.
SELECT customer_name,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY customer_name;

30. Find the monthly withdrawal trends.
SELECT YEAR(transaction_date) AS year,
MONTHNAME(transaction_date) AS month,
SUM(transaction_amount) AS total_withdrawal
FROM bank_transactions
WHERE transaction_type = 'Withdrawal'
GROUP BY YEAR(transaction_date), MONTH(transaction_date), MONTHNAME(transaction_date);

31. Find the average transaction amount for each customer.
SELECT customer_name,
ROUND(AVG(transaction_amount), 2) AS average_transaction
FROM bank_transactions
GROUP BY customer_name;

32. Find the highest transaction amount.
SELECT MAX(transaction_amount) AS highest_transaction
FROM bank_transactions;

33. Find the highest transaction with customer and transaction details.
SELECT customer_name,
transaction_type,
transaction_amount
FROM bank_transactions
ORDER BY transaction_amount DESC
LIMIT 1;

34. Find the highest transaction for each customer.
SELECT customer_name,
MAX(transaction_amount) AS personal_highest
FROM bank_transactions
GROUP BY customer_name
ORDER BY personal_highest DESC;

35. Find the lowest transaction for each customer.
SELECT customer_name,
MIN(transaction_amount) AS personal_min
FROM bank_transactions
GROUP BY customer_name
ORDER BY personal_min ASC;

36. Find the overall lowest transaction amount.
SELECT MIN(transaction_amount) AS lowest_transaction
FROM bank_transactions;

37. Find the total business by branch.
SELECT branch_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY branch_name;

38. Find the total business by city.
SELECT city,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY city;

39. Find the total business by state.
SELECT state,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY state;

40. Find the total business by account type.
SELECT account_type,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY account_type;
