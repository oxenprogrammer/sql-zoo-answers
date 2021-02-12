SELECT
  id,
  title
FROM
  movie
WHERE
  yr = 1962
SELECT
  yr
FROM
  movie
WHERE
  title = 'Citizen Kane';

SELECT
  id,
  title,
  yr
FROM
  movie
WHERE
  title LIKE '%Star%'
  AND title LIKE '%Trek%';

SELECT
  id
FROM
  actor
WHERE
  name = 'Glenn Close';

SELECT
  id
FROM
  movie
WHERE
  title = 'Casablanca';

SELECT
  name
FROM
  actor
  JOIN casting ON (id = actorid)
WHERE
  movieid = 27
GROUP BY
  name;

SELECT
  name
FROM
  actor
  JOIN casting ON (id = actorid)
WHERE
  movieid = (
    SELECT
      id
    FROM
      movie
    WHERE
      title = 'Alien'
  );

SELECT
  DISTINCT title
FROM
  movie
  JOIN casting ON (id = movieid)
WHERE
  id IN(
    SELECT
      movieid
    FROM
      casting
      JOIN actor ON (actorid = id)
    WHERE
      name = 'Harrison Ford'
  );

SELECT
  DISTINCT title
FROM
  movie
  JOIN casting ON (id = movieid)
WHERE
  id IN(
    SELECT
      movieid
    FROM
      casting
      JOIN actor ON (actorid = id)
    WHERE
      name = 'Harrison Ford'
      AND ord != 1
  );

SELECT
  title,
  name
FROM
  movie
  JOIN casting ON (id = movieid)
  JOIN actor ON actorid = actor.id
WHERE
  yr = 1962
  AND ord = 1;

SELECT
  yr,
  COUNT(title)
FROM
  movie
  JOIN casting ON movie.id = movieid
  JOIN actor ON actorid = actor.id
WHERE
  name = 'Rock Hudson'
GROUP BY
  yr
HAVING
  COUNT(title) > 2;

SELECT
  title,
  name
FROM
  movie
  JOIN casting ON (id = movieid)
  JOIN actor ON (actorid = actor.id)
WHERE
  movieid IN(
    SELECT
      movieid
    FROM
      movie
      JOIN casting ON(id = movieid)
      JOIN actor ON (actorid = actor.id)
    WHERE
      name = 'Julie Andrews'
  )
  AND ord = 1;

SELECT
  name
FROM
  actor
  JOIN casting ON (actor.id = actorid)
  JOIN movie ON (movie.id = movieid)
WHERE
  ord = 1
GROUP BY
  name
HAVING
  count(name) >= 15
ORDER BY
  name;

SELECT
  title,
  count(actorid)
FROM
  movie
  JOIN casting ON (movieid = movie.id)
  JOIN actor ON (actorid = actor.id)
WHERE
  yr = 1978
GROUP BY
  title
ORDER BY
  (count(actorid)) DESC,
  title;

SELECT
  name
FROM
  movie
  JOIN casting ON (movieid = movie.id)
  JOIN actor ON (actorid = actor.id)
WHERE
  name != 'Art Garfunkel'
  AND movieid IN (
    SELECT
      movieid
    FROM
      casting
      JOIN actor ON (actorid = actor.id)
    WHERE
      name = 'Art Garfunkel'
  );