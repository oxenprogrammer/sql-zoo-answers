SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  yr = 1950;

SELECT
  winner
FROM
  nobel
WHERE
  yr = 1962
  AND subject = 'Literature';

SELECT
  yr,
  subject
FROM
  nobel
WHERE
  winner = 'Albert Einstein';

SELECT
  winner
FROM
  nobel
WHERE
  subject = 'Peace'
  AND yr >= 2000;

SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  subject = 'Literature'
  AND yr BETWEEN 1980
  AND 1989;

SELECT
  *
FROM
  nobel
WHERE
  winner IN (
    'Theodore Roosevelt',
    'Woodrow Wilson',
    'Jimmy Carter',
    'Barack Obama'
  );

SELECT
  winner
FROM
  nobel
WHERE
  winner LIKE 'John%';

SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  subject = 'Physics'
  AND yr = 1980
  OR subject = 'Chemistry'
  AND yr = 1984;

SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  yr = 1980
  AND subject != 'Chemistry'
  AND subject != 'Medicine';

SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  subject = 'Medicine'
  AND yr < 1910
  OR subject = 'Literature'
  AND yr >= 2004;

SELECT
  yr,
  subject,
  winner
FROM
  nobel
WHERE
  winner = 'PETER GRÜNBERG';

SELECT
  *
FROM
  nobel
WHERE
  winner = 'EUGENE O''NEILL';

SELECT
  winner,
  yr,
  subject
from
  nobel
WHERE
  winner like 'Sir%'
ORDER BY
  yr DESC,
  winner;

SELECT
  winner,
  subject
FROM
  nobel
WHERE
  yr = 1984
ORDER BY
  CASE
    WHEN subject IN ('Physics', 'Chemistry') THEN 1
    ELSE 0
  END,
  subject,
  winner