SELECT *,
    strftime('%w', DtCriacao) AS diaSemana
FROM transacoes WHERE diaSemana IN ('0', '6')

LIMIT 100