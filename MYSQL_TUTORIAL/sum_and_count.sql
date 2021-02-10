SELECT
  SUM(population)
FROM
  world;

SELECT
  DISTINCT continent
FROM
  world;

SELECT
  SUM(gdp) as 'Total GDP of Africa'
FROM
  world
WHERE
  continent = 'Africa';

SELECT
  COUNT(name) as 'Count'
FROM
  world
WHERE
  area >= 1000000;

SELECT
  SUM(population) as 'Total Population'
FROM
  world
WHERE
  name IN ('Estonia', 'Latvia', 'Lithuania');

SELECT
  continent,
  count(name)
FROM
  world
GROUP BY
  continent;

SELECT
  continent,
  COUNT(name) AS 'COUNTRY'
FROM
  world
WHERE
  population >= 10000000
GROUP BY
  continent;

SELECT
  continent
FROm
  world
GROUP BY
  continent
HAVING
  sum(population) >= 100000000;