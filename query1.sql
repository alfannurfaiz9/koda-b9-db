SELECT title, release_date
FROM movies
WHERE EXTRACT(YEAR FROM release_date) = '2020';

SELECT first_name
FROM actors
WHERE first_name LIKE '%s';

SELECT title, release_date, rating
FROM movies
WHERE EXTRACT(YEAR FROM release_date) BETWEEN 2004 AND 2010 AND rating BETWEEN 4 AND 8;
