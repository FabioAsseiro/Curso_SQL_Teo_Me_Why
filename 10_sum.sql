SELECT  

    sum(qtdePontos),
    sum(CASE WHEN qtdePontos > 0 THEN qtdePontos ELSE 0 END)AS qtdePontosPos,
    sum(CASE WHEN qtdePontos < 0 THEN qtdePontos ELSE 0  END)AS qtdePontosNeg,
    count(CASE WHEN qtdePontos < 0 THEN qtdePontos END)AS qtdeTransacaoNeg,
    count(CASE WHEN qtdePontos > 0 THEN qtdePontos END)AS qtdeTransacaoPos


FROM transacoes


WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'