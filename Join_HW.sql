-- Question 1: List all customers who live in Texas (use JOINs)
SELECT *
FROM customer;

SELECT *
FROM address;

SELECT *
FROM customer
JOIN address ON customer.customer_id = address.address_id
WHERE address.district = 'Texas';
-- Annswer 1: 5
--10	1	Dorothy	Taylor	dorothy.taylor@sakilacustomer.org	14	true	2006-02-14	2013-05-26 14:49:45.738	1	10	1795 Santiago de Compostela Way		Texas	295	18743	860452626434	2006-02-15 09:45:30.000
--122	1	Thelma	Murray	thelma.murray@sakilacustomer.org	126	true	2006-02-14	2013-05-26 14:49:45.738	1	122	333 Goinia Way		Texas	185	78625	909029256431	2006-02-15 09:45:30.000
--310	2	Daniel	Cabral	daniel.cabral@sakilacustomer.org	315	true	2006-02-14	2013-05-26 14:49:45.738	1	310	913 Coacalco de Berriozbal Loop		Texas	33	42141	262088367001	2006-02-15 09:45:30.000
--405	1	Leonard	Schofield	leonard.schofield@sakilacustomer.org	410	true	2006-02-14	2013-05-26 14:49:45.738	1	405	530 Lausanne Lane		Texas	135	11067	775235029633	2006-02-15 09:45:30.000
--567	2	Alfredo	Mcadams	alfredo.mcadams@sakilacustomer.org	573	true	2006-02-14	2013-05-26 14:49:45.738	1	567	1894 Boa Vista Way		Texas	178	77464	239357986667	2006-02-15 09:45:30.000

-- Question 2: List all payments of more than $7.00 with the customer’s first and last name
SELECT *
FROM customer;

SELECT first_name, last_name
FROM customer 
JOIN payment ON customer.id = payment.payment_id 
WHERE payment >= 7;
-- I got column customer.id does not exist. I am missing something fundamental about join :/

-- Question 3: Show all customer names who have made over $175 in payments (use subqueries)
SELECT first_name, last_name 
FROM customer 
WHERE first_name( 
	SELECT * 
	FROM payment 
	WHERE amount 
	HAVING SUM(amount) > 175
);
-- I got another error :/

-- Question 4: List all customers that live in Argentina (use the city table)
SELECT *
FROM customer 
JOIN address ON customer.customer_id WHERE address.address_id
WHERE customer.district = 'Argentina'
--Also got an error. 

-- Question 5: Show all the film categories with their count in descending order
SELECT *
FROM category 
ORDER BY category DESC
-- Answer 5:
--16	Travel	2006-02-15 09:46:27.000
--15	Sports	2006-02-15 09:46:27.000
--14	Sci-Fi	2006-02-15 09:46:27.000
--13	New	2006-02-15 09:46:27.000
--12	Music	2006-02-15 09:46:27.000
--11	Horror	2006-02-15 09:46:27.000

-- Question 6: What film had the most actors in it (show film info)?
SELECT *
FROM film
-- Can't find film info 

-- Question 7: Which actor has been in the least movies?

-- Question 8: Which country has the most cities?
SELECT *
FROM city 
JOIN country.

-- Question 9: List the actors who have been in between 20 and 25 films.
SELECT *
FROM actor

SELECT * 
FROM film
