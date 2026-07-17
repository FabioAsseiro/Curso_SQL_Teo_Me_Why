-- Qual o produto mais transacionado

SELECT IdProduto, 
    count(*), 
    sum(QtdeProduto) AS QtdeProduto -- 2 formas de fazer essa consulta
FROM transacao_produto


GROUP BY IdProduto
ORDER BY 3 DESC