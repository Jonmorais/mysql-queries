-- Select e Concat
SELECT CONCAT(first_name,' ', last_name) 
AS `full name` 
from sakila.actor;

-- Limit e Offset
SELECT * 
FROM sakila.rental 
LIMIT 10 OFFSET 50;

-- Order GROUP BY

SELECT *
FROM film
ORDER BY title ASC, description DESC;

-- Escreva uma query que exiba todos os filmes cadastrados no banco de dados. 
SELECT * FROM film;

-- Escreva uma query que exiba apenas o nome dos filmes, seu ano de lançamento e sua classificação . 
SELECT title, release_year, rating 
FROM film; 

--  Quantos filmes temos cadastrados? 
SELECT COUNT(title)
FROM film
WHERE title <> '';

-- Escreva uma query que exiba apenas os sobrenomes únicos cadastrados. 
SELECT DISTINCT last_name
FROM actor;

-- Quantos sobrenomes únicos temos na tabela? 
SELECT COUNT(DISTINCT last_name)
FROM actor;

-- Ordene os valores na tabela em ordem crescente de sobrenomes e em ordem decrescente de nome.
SELECT last_name, first_name
FROM actor
ORDER BY last_name, first_name DESC; 

-- Vá até a tabela language do sakila e crie uma pesquisa que mostre os 5 idiomas cadastrados , mas não mostre o idioma english .
SELECT name
FROM language
WHERE name <> 'English';

-- Crie uma query para encontrar os 20 primeiros filmes , incluindo o título , o ano de lançamento , a duração , a classificação indicativa e o custo de substituição . Ordene os resultados pelos filmes com a maior duração e depois pelo menor custo de substituição. 
SELECT title,
  release_year,
  length,
  rating,
  replacement_cost 
FROM film
ORDER BY length DESC, replacement_cost
LIMIT 20; 
