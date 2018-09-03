-- 09-17 Exam

SELECT *
FROM ships s, OUTCOMES o
WHERE s.name=o.ship; -- запетаята играе роля на union

--second way 

SELECT *
FROM ships s left join OUTCOMES o ON s.name=o.ship;

--- Task 1
SELECT name, country, RESULT
FROM ships LEFT JOIN OUTCOMES ON NAME = SHIP
JOIN CLASSES ON ships.class = CLASSES.CLASS
WHERE RESULT <> 'sunk' or RESULT is NULL;

--- Task 2
SELECT name, displacement, numguns
FROM classes c JOIN ships s ON s.class=c.class
WHERE displacement = (SELECT MIN(DISPLACEMENT)
                      FROM classes) AND
    numguns = (SELECT MAX(NUMGUNS)
               FROM classes c1
               WHERE c1.class = c.class);

--- Task 3
SELECT battle, ship
FROM outcomes o1
WHERE EXISTS (SELECT *
              FROM outcomes o2
              WHERE o1.SHIP = o2.SHIP and o1.BATTLE <> o2.BATTLE);

-- hint когато в subquery-то имаме звезда => от пред е EXIST


SELECT *
FROM CLASSES
WHERE COUNTRY IN ('BG', 'USA', 'Japan');

SELECT *
FROM SHIPS 
WHERE LAUNCHED BETWEEN 1916 and 1940; -- [1916 - 1940]

-- sub-query-то може да бъде в 
    -- from clouse-ата
    -- where - където се ползва в any, all, exists

-- най-новата дата на пускане на кораб (1948?)
SELECT * FROM SHIPS WHERE LAUNCHED >= ALL (SELECT LAUNCHED FROM SHIPS);


-- Заявката ще върне всички записи, ако EXIST върне нещо
SELECT *
FROM SHIPS
WHERE EXISTS (SELECT LAUNCHED FROM SHIPS);



-- Task 4 
-- Hints:
--     - провери синтаксиса
--     - провери дали броят на върнатите колони е същият, като в условието 
--     - group by на две колони може да е лошо в някои ситуации