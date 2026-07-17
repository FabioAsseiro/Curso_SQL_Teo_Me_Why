-- Qual o valor médio de pontos positivos por dia?

SELECT sum(qtdePontos) as TotalPontos,
    -- count(substr(DtCriacao,1,10)) AS DiasRepetidos, Para ver dias repetidos
    count(DISTINCT substr(DtCriacao,1,10)) AS DiasUnicos,

    sum(qtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS mediaPontos
FROM transacoes

WHERE qtdePontos > 0