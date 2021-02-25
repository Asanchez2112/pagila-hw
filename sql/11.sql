/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film.film_id,
       film.title,
       count(film_id)
FROM film 
INNER JOIN inventory USING (film_id)
WHERE title LIKE 'H%'
GROUP BY film.film_id
ORDER BY title DESC;
