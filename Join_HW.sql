-- Question 1: List all customers who live in Texas (use JOINs)
SELECT *
FROM customer;

SELECT *
FROM address

SELECT *
FROM customer
JOIN address ON customers.customer_id = address.customer_id
WHERE address.district = 'Texas';


