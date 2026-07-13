SELECT idCliente,
        -- qtdePontos,
        -- qtdePontos + 10 AS qtdePontosPlus10,
        -- qtdePontos  * 2 AS qtdePontosDouble,

        -- Selecionar e dar CRTL + Barra ele comenta tudo
        DtCriacao,
        datetime(DtCriacao) AS DataFormatada,
        strftime('%w', datetime(DtCriacao)) AS diaSemana,
        substr(DtCriacao, 1,10) AS SubStrDate
FROM clientes


LIMIT 10