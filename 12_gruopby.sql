-- SELECT IdProduto,
--         count(*)
-- FROM transacao_produto

-- GROUP BY IdProduto


SELECT idCliente,
        sum(qtdePontos) AS pontosPorIdCLiente,
        count(IdTransacao) AS qtdeTransacao
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY idCliente
HAVING sum(qtdePontos) >= 4000 -- <-- FIltro da agregação

ORDER BY sum(qtdePontos) DESC

