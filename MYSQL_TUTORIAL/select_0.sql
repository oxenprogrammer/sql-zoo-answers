SELECT
  population
FROM
  world
WHERE
  name = 'Germany';

SELECT
  name,
  population
FROM
  world
WHERE
  name IN ('Sweden', 'Norway', 'Denmark');

SELECT
  name,
  area
FROM
  world
WHERE
  area BETWEEN 200000
  AND 250000;

SELECT
  name,
  population
FROM
  world
WHERE
  population BETWEEN 1000000
  AND 1250000;

SELECT
  name
FROM
  world
WHERE
  name LIKE '%a'
  OR name LIKE '%l';

SELECT
  name,
  area,
  population
FROM
  world
WHERE
  area > 50000
  AND population < 10000000;

SELECT
  name,
  population / area
FROM
  world
WHERE
  name IN ('China', 'Nigeria', 'France', 'Australia');