SELECT title AS "Movie", directors.first_name AS "Director First Name", directors.last_name AS "Director Last Name", genres.name AS "Genre"
FROM movies
JOIN directors ON movies.director_id = directors.id
JOIN genres ON movies.genre_id = genres.id
LIMIT 50;

SELECT title AS "Movie", actors.first_name AS "Actor First Name", actors.last_name AS "Actor Last Name"
from movies
JOIN movies_actors ON movies_actors.movie_id = movies.id
JOIN actors ON actors.id = movies_actors.actor_id
ORDER BY movies ASC;


