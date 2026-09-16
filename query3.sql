SELECT directors.first_name AS "Director First Name", directors.last_name AS "Director Last Name",COUNT(genre_id) AS "Total Genre"
FROM movies
JOIN genres ON movies.genre_id = genres.id
JOIN directors ON movies.director_id = directors.id
GROUP BY directors.id
ORDER BY "Total Genre" DESC;

SELECT actors.first_name AS "Actor First Name", actors.last_name AS "Actor Last Name", COUNT(movies.genre_id) AS "Jumlah Genre"
FROM movies
JOIN movies_actors ON movies_actors.movie_id = movies.id
JOIN actors ON actors.id = movies_actors.actor_id
GROUP BY actors.id
HAVING COUNT(movies.genre_id) >= 5;

SELECT directors.first_name AS "Director First Name", directors.last_name AS "Director Last Name",COUNT(movies.id) AS "Total Movies"
FROM movies
JOIN genres ON movies.genre_id = genres.id
JOIN directors ON movies.director_id = directors.id
GROUP BY directors.id
ORDER BY "Total Movies" DESC;

SELECT EXTRACT(YEAR FROM release_date), COUNT(EXTRACT(YEAR FROM release_date)) AS "Total"
FROM movies
GROUP BY EXTRACT(YEAR FROM release_date)
ORDER BY "Total" DESC
LIMIT 1;

-- movies.title AS "Movie Title", actors.first_name AS "Actor First Name", actors.last_name AS "Actor Last Name"

SELECT movies.title, STRING_AGG(actors.first_name, ',') AS "Actor List"
FROM movies
JOIN movies_actors ON movies_actors.movie_id = movies.id
JOIN actors ON actors.id = movies_actors.actor_id
GROUP BY movies.id
ORDER BY movies.id;