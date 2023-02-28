USE sakila;

USE sakila;

#1
SELECT last_name 
FROM actor
GROUP BY last_name
HAVING count(last_name) = 1;

#2
SELECT last_name 
FROM actor
GROUP BY last_name
HAVING count(last_name) <> 1;

#3
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;

#4 

SELECT release_year, COUNT(release_year) FROM film
GROUP BY release_year;

#5
SELECT rating, COUNT(rating) FROM film 
GROUP BY rating;

#6

SELECT rating, AVG(length) FROM film
GROUP BY rating; 

#7

SELECT rating, AVG(length) FROM film
GROUP BY rating
HAVING AVG(length) > 120; 
