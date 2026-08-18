INSERT INTO bank_transactions (
    transaction_date, customer_id, customer_name, gender, age, 
    city, state, branch_name, account_number, account_type, 
    customer_segment, transaction_type, payment_channel, 
    transaction_amount, balance_after_transaction, loan_status, 
    credit_score, occupation
) VALUES 
('2026-01-15', 101, 'Aarav Sharma', 'Male', 34, 'Mumbai', 'Maharashtra', 'Fort Branch', '9876543210', 'Savings', 'Gold', 'Deposit', 'Net Banking',
 50000.00, 125000.50, 'No', 765, 'Software Engineer'),
('2026-01-18', 102, 'Priya Patel', 'Female', 28, 'Ahmedabad', 'Gujarat', 'CG Road Branch', '8765432109', 'Current', 'Silver', 'Withdrawal', 'ATM', 15000.00, 45000.25, 'Approved', 620, 'Business Owner'),
('2026-01-20', 103, 'Amit Verma', 'Male', 45, 'Delhi', 'Delhi', 'Connaught Place', '7654321098', 'Savings', 'Platinum', 'Deposit', 'UPI', 1200.00, 310450.75, 'No', 810, 'Doctor'),
('2026-01-22', 104, 'Sneha Reddy', 'Female', 52, 'Hyderabad', 'Telangana', 'Gachibowli Branch', '6543210987', 'Savings', 'Gold', 'Withdrawal', 'Mobile App', 8500.00, 92000.00, 'Rejected', 580, 'Teacher'),
('2026-01-25', 105, 'Rohan Das', 'Male', 23, 'Kolkata', 'West Bengal', 'Salt Lake Branch', '5432109876', 'Savings', 'Regular', 'Deposit', 'Cash', 2000.00, 7500.10, 'No', 710, 'Student');
INSERT INTO bank_transactions (
    transaction_date, customer_id, customer_name, gender, age, city, state, 
    branch_name, account_number, account_type, customer_segment, 
    transaction_type, payment_channel, transaction_amount, 
    balance_after_transaction, loan_status, credit_score, occupation
) 
VALUES (
    '2026-02-15', 106, 'Prem Kumar', 'Male', 34, 'Mumbai', 'Maharashtra', 
    'Fort Branch', '9373844390', 'Savings', 'Gold', 
    'Deposit', 'Net Banking', 90000.00, 125000.50, 'No', 765, 'Software Engineer'
);
