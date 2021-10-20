SELECT first_name FROM sakila.actor
GROUP BY first_name;

SELECT first_name, COUNT(*) FROM sakila.actor
GROUP BY first_name;

-- Average duration of films grouped by rating:
SELECT rating, AVG(length)
FROM sakila.film
GROUP BY rating;

-- Minimum replacement value of films grouped by rating:
SELECT rating, MIN(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Maximum replacement value of films grouped by rating:
SELECT rating, MAX(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Total cost of replacing films grouped by rating:
SELECT rating, SUM(replacement_cost)
FROM sakila.film
GROUP by rating;

SELECT district, COUNT(*)
FROM `sakila`.`address`
GROUP BY district
HAVING COUNT(*) > 5;
