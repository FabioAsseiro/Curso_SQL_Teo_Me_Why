-- Quantos Produtos são de RPG

-- SELECT count(*) AS qtdeItensRPG
-- FROM produtos

-- WHERE DescCategoriaProduto = 'rpg'


SELECT DescCategoriaProduto, count(*) AS qtdeItensRPG
FROM produtos

GROUP BY DescCategoriaProduto

ORDER BY count(*) DESC