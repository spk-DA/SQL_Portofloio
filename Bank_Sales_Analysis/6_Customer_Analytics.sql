41. Find the top 10 customers by business.
SELECT customer_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_name
ORDER BY total_business DESC
LIMIT 10;

42. Find customers with more than five transactions.
SELECT customer_name,
COUNT(customer_id) AS total_transactions
FROM bank_transactions
GROUP BY customer_name
HAVING COUNT(customer_id) > 5;

43. Find customers having business above ₹5,00,000.
SELECT customer_name,
SUM(transaction_amount) AS total_business
FROM bank_transactions
GROUP BY customer_name
HAVING SUM(transaction_amount) > 500000;

44. Find customers with low credit scores.
SELECT customer_name,
MIN(credit_score) AS low_credit_score
FROM bank_transactions
GROUP BY customer_name
ORDER BY low_credit_score ASC;

45. Find customers with high credit scores.
SELECT customer_name,
MAX(credit_score) AS high_credit_score
FROM bank_transactions
GROUP BY customer_name
ORDER BY high_credit_score DESC;

46. Find senior citizen customers.
SELECT customer_name,
age
FROM bank_transactions
WHERE age >= 60;

47. Find young customers.
SELECT customer_name,
age
FROM bank_transactions
WHERE age <= 35;

48. Find premium customers.
SELECT customer_name,
customer_segment
FROM bank_transactions
WHERE customer_segment IN ('Gold', 'Platinum');

49. Find salary account customers.
SELECT customer_name,
account_type,
transaction_amount
FROM bank_transactions
WHERE account_type = 'Salary';

50. Find business account customers.
SELECT customer_name,
account_type,
occupation
FROM bank_transactions
WHERE account_type = 'Current';

51. Find the average customer age.
SELECT ROUND(AVG(age), 2) AS average_customer_age
FROM bank_transactions;

52. Perform age-group analysis.
SELECT
CASE
WHEN age < 18 THEN 'Youth'
WHEN age BETWEEN 18 AND 25 THEN 'Adult'
WHEN age BETWEEN 26 AND 35 THEN 'Employee'
WHEN age BETWEEN 36 AND 60 THEN 'Middle Age'
ELSE 'Senior Citizen'
END AS age_group,
COUNT(*) AS total_customers
FROM bank_transactions
GROUP BY age_group;

53. Find the city-wise customer count.
SELECT city,
COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY city;

54. Find the state-wise customer count.
SELECT state,
COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY state;

55. Find the customer segment distribution.
SELECT customer_segment,
COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY customer_segment;

56. Find the occupation distribution.
SELECT occupation,
COUNT(DISTINCT customer_id) AS customer_count
FROM bank_transactions
GROUP BY occupation;

57. Find customers using UPI.
SELECT customer_name,
payment_channel
FROM bank_transactions
WHERE payment_channel = 'UPI';

58. Find customers using ATM.
SELECT customer_name,
payment_channel
FROM bank_transactions
WHERE payment_channel = 'ATM';

59. Find customers using Net Banking.
SELECT customer_name,
payment_channel
FROM bank_transactions
WHERE payment_channel = 'Net Banking';

60. Find customers with the highest balance.
SELECT customer_name,
MAX(balance_after_transaction) AS highest_balance
FROM bank_transactions
GROUP BY customer_name
ORDER BY highest_balance DESC;
