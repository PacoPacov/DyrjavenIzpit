-- Task 1
SELECT studioname, title, year
FROM movie m
WHERE year = (SELECT MAX(year)
              FROM movie
              WHERE m.STUDIONAME = STUDIONAME);

-- Task 2
SELECT name, SUM(length)
FROM movieexec JOIN movie ON producerc# = cert#
GROUP BY name
HAVING MIN(Year) < 1980;

-- Task 3
SELECT starname, title, name, networth
FROM starsin JOIN movie ON movietitle=title AND movieyear=year
    JOIN (SELECT cert#, networth, name
          FROM movieexec
          WHERE NETWORTH >= all(SELECT NETWORTH FROM MOVIEEXEC)) t 
ON t.CERT# = PRODUCERC#;

-- Task 4 - V)