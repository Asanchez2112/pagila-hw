/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */

 SELECT *
FROM (SELECT last_name, count(last_name) 
    AS last_name_count
    FROM actor
    GROUP BY last_name
    ORDER BY count(last_name) DESC) AS table_1
WHERE last_name_count > 1; 
