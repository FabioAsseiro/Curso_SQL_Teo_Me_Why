-- Qual dia da semana que mais teve pedidos me 2025


SELECT count(*) AS qtdeTransacoes ,
    CASE
        WHEN strftime('%w', DtCriacao) = '0' THEN 'Domingo'
        WHEN strftime('%w', DtCriacao) = '1' THEN 'Segunda'
        WHEN strftime('%w', DtCriacao) = '2' THEN 'Terça'
        WHEN strftime('%w', DtCriacao) = '3' THEN 'Quarta'
        WHEN strftime('%w', DtCriacao) = '4' THEN 'Quinta'
        WHEN strftime('%w', DtCriacao) = '5' THEN 'Sexta'
        WHEN strftime('%w', DtCriacao) = '6' THEN 'Sabado'
    END AS DiaSemana
FROM transacoes

-- WHERE DtCriacao >= '2025=01-01'
-- AND DtCriacao < '2026=01-01'

WHERE substr(DtCriacao, 1,4) = '2025'

GROUP BY DiaSemana

ORDER BY 1 DESC