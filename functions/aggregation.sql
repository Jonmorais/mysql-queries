-- Usando a coluna replacement_cost (valor de substituição) vamos encontrar:
SELECT AVG(replacement_cost) FROM sakila.film; -- 19.984000 (Average between the registers)
SELECT MIN(replacement_cost) FROM sakila.film; -- 9.99 (lowest value found)
SELECT MAX(replacement_cost) FROM sakila.film; -- 29.99 (highest value found)
SELECT SUM(replacement_cost) FROM sakila.film; -- 19984.00 (Sum of all registers)
SELECT COUNT(replacement_cost) FROM sakila.film; -- 1000 registers found (Quantity)


