-- Module 1 – Basic Reporting

1. Display all customers.
SELECT customer_name FROM bank_transactions;

2. Display all transactions.
SELECT * FROM bank_transactions;

3. Show deposits only.
SELECT customer_name, transaction_type FROM bank_transactions WHERE transaction_type = 'Deposit';

4. Show withdrawals only.
SELECT customer_name, transaction_type FROM bank_transactions WHERE transaction_type = 'Withdrawal';

5. Find transactions above or equal to ₹50,000.
SELECT customer_name, transaction_amount FROM bank_transactions WHERE transaction_amount >= 50000;

6. List customers from Delhi.
SELECT customer_name, city FROM bank_transactions WHERE city = 'Delhi';

7. Display Savings accounts.
SELECT customer_name, account_type FROM bank_transactions WHERE account_type = 'Savings';

8. Display Current accounts.
SELECT customer_name, account_type FROM bank_transactions WHERE account_type = 'Current';

9. Find female customers.
SELECT customer_name, gender FROM bank_transactions WHERE gender = 'Female';

10. Find customers older than 60.
SELECT customer_name, age FROM bank_transactions WHERE age > 60;

11. Show all UPI transactions.
SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'UPI';

12. Show ATM transactions.
SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'ATM';

13. Show Cheque transactions.
SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'Cheque';

14. Show Net Banking transactions.
SELECT customer_name, payment_channel FROM bank_transactions WHERE payment_channel = 'Net Banking';

15. Display transactions in January.
SELECT customer_name, transaction_date FROM bank_transactions WHERE MONTH(transaction_date) = 1;

16. Sort transactions by transaction amount in descending order.
SELECT * FROM bank_transactions ORDER BY transaction_amount DESC;

17. Display customers from Mumbai.
SELECT customer_name, city FROM bank_transactions WHERE city = 'Mumbai';

18. Display male customers.
SELECT customer_name, gender FROM bank_transactions WHERE gender = 'Male';

19. Find transactions below ₹10,000.
SELECT customer_name, transaction_amount FROM bank_transactions WHERE transaction_amount < 10000;

20. Display UPI transactions with an amount greater than ₹20,000.
SELECT customer_name, transaction_amount, payment_channel FROM bank_transactions WHERE payment_channel = 'UPI' AND transaction_amount > 20000;
