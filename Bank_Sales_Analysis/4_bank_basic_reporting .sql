1. Display all customers.
2. Display all transactions.
3. Show deposits only.
4. Show withdrawals only.
5. Find transactions above or equal to ₹50,000.
6. List customers from Delhi.
7. Display Savings accounts.
8. Display Current accounts.
9. Find female customers.
10. Find customers older than 60.
11. Show all UPI transactions.
12. Show ATM transactions.
13. Show Cheque transactions.
14. Show Net Banking transactions.
15. Display transactions in January.
16. Sort transactions by transaction amount in descending order.
17. Display customers from Mumbai.
18. Display male customers.
19. Find transactions below ₹10,000.
20. Display UPI transactions with an amount greater than ₹20,000.




1. SELECT customer_name FROM bank_transactions;
2. SELECT * FROM bank_transactions;
3. SELECT customer_name, transaction_type FROM bank_transactions WHERE transaction_type = 'Deposit';
4. SELECT customer_name, transaction_type FROM bank_transactions WHERE transaction_type = 'Withdrawal';
5. SELECT customer_name, transaction_amount FROM bank_transactions WHERE transaction_amount >= 50000;
6. SELECT customer_name, city FROM bank_transactions WHERE city = 'Delhi';
7. SELECT customer_name, account_type FROM bank_transactions WHERE account_type = 'Savings';
8. SELECT customer_name, account_type FROM bank_transactions WHERE account_type = 'Current';
9. SELECT customer_name, gender FROM bank_transactions WHERE gender = 'Female';
10. SELECT customer_name, age FROM bank_transactions WHERE age > 60;
11. SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'UPI';
12. SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'ATM';
13. SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'Cheque';
14. SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'Net Banking';
15. SELECT customer_name, transaction_date FROM bank_transactions WHERE MONTH(transaction_date) = 1;
16. SELECT * FROM bank_transactions ORDER BY transaction_amount DESC;
17. SELECT customer_name, city FROM bank_transactions WHERE city = 'Mumbai';
18. SELECT customer_name, gender FROM bank_transactions WHERE gender = 'Male';
19. SELECT customer_name, transaction_amount FROM bank_transactions WHERE transaction_amount < 10000;
20. SELECT customer_name, transaction_amount, payment_channel FROM bank_transactions WHERE payment_channel = 'UPI' AND transaction_amount > 20000;







