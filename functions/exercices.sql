-- Ex 1)
SELECT MAX(salary)
FROM `hr`.`employees`;

-- Ex 2)
SELECT MAX(salary) - MIN(salary) AS Diff
FROM `hr`.`employees`;

-- Ex 3)


SELECT language_id
FROM `sakila`.`film`
GROUP BY language_id;
