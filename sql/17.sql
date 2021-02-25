/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country,
       sum(amount) AS profit
FROM payment
INNER JOIN rental USING (rental_id)
INNER JOIN customer ON rental.customer_id=customer.customer_id
INNER JOIN address USING (address_id)
INNER JOIN city USING (city_id)
INNER JOIN country USING (country_id)
GROUP BY country
ORDER BY country;
