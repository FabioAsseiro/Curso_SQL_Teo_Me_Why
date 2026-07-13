-- Selecione todos os clientes com email cadastrado 


SELECT idCliente, qtdePontos


FROM clientes 

WHERE flEmail = 1 

LIMIT 50;