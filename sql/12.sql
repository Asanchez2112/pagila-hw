/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT customer_id,
       first_name,
       last_name,
       sum(amount)
FROM payment 
INNER JOIN customer USING(customer_id)
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY last_name;
