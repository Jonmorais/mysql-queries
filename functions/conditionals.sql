-- Sintaxe:
-- SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso);

-- SELECT IF(idade >= 18, 'Maior de idade', 'Menor de Idade')
-- FROM pessoas;

-- SELECT IF(aberto, 'Entrada permitida', 'Entrada não permitida')
-- FROM estabelecimentos;

-- Exemplo utilizando o banco sakila:
SELECT first_name, IF(active, 'Cliente Ativo', 'Cliente Inativo') AS status
FROM `sakila`.`customer`
LIMIT 20;

-- Sintaxe:
-- SELECT CASE
--   WHEN condicao THEN valor
--   ELSE valor padrao
-- END;

-- SELECT
--     nome,
--     nivel_acesso,
--     CASE
--         WHEN nivel_acesso = 1 THEN 'Nível de acesso 1'
--         WHEN nivel_acesso = 2 THEN 'Nível de acesso 2'
--         WHEN nivel_acesso = 3 THEN 'Nível de acesso 3'
--         ELSE 'Usuário sem acesso'
--     END AS nivel_acesso
-- FROM permissoes_usuario;

-- Exemplo utilizando a tabela sakila.film:
SELECT
    first_name,
    email,
    CASE
        WHEN email = 'MARY.SMITH@sakilacustomer.org' THEN 'Low Value'
        WHEN email = 'PATRICIA.JOHNSON@sakilacustomer.org' THEN 'Medium Value'
        WHEN email = 'LINDA.WILLIAMS@sakilacustomer.org' THEN 'High Value'
        ELSE 'not classified'
    END AS valor
FROM sakila.customer
LIMIT 10;

SELECT film_id, title,
  IF(title = 'ACE GOLDFINGER', 'Yes, I know this movie', 'No, I have never seen this movie')
  AS 'Did I watch this?'
FROM `sakila`.`film`;

SELECT title, rating,
  CASE
      WHEN rating = 'G' THEN 'All Ages Admitted'
      WHEN rating = 'PG' THEN 'Parental Guidance Suggested'
      WHEN rating = 'PG-13' THEN 'Some Material May Be Inappropriate For Children Under 13.'
      WHEN rating = 'R' THEN 'Children Under 17 Require Accompanying Parent or LEGAL Guardian'
  ELSE 'No one 17 and Under Admitted'
  END AS `Ratings Guide`
FROM `sakila`.`film`;
