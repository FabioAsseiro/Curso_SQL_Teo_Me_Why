SELECT 
    round(avg(qtdePontos),2) AS mediaQtdePontos,
    min(qtdePontos) AS MinCarteira,
    max(qtdePontos) AS MaxCarteiras,
    sum(flTwitch),
    sum(flEmail)

FROM clientes