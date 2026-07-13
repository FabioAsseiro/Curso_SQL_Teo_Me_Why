-- Selecione produtos que contém 'churn' no nome

SELECT * 

FROM produtos 

-- WHERE DescNomeProduto = 'Churn_10pp'
-- OR DescNomeProduto = 'Churn_2pp'
-- OR DescNomeProduto = 'Churn_5pp'

WHERE DescNomeProduto IN ('Churn_10pp','Churn_2pp','Churn_5pp')

-- WHERE DescNomeProduto LIKE 'Churn%' 
-- Like é muiito custuso para o banco de dados vai verificar string por string


