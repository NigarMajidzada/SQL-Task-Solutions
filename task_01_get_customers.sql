/*
Task Name: Get All Customers with Balance Above 1000
Description:
    Retrieve all customers from the 'customers' table who have an account balance greater than 1000.
    The result should include:
      - Customer ID
      - Customer Name
      - Account ID
      - Account Balance
*/

-- SQL Query Solution
SELECT 
    c.customer_id,
    c.name AS customer_name,
    a.account_id,
    a.balance
FROM 
    customers c
JOIN 
    accounts a ON c.customer_id = a.customer_id
WHERE 
    a.balance > 1000
ORDER BY 
    a.balance DESC;
