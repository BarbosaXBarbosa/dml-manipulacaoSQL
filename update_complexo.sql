SELECT * FROM CLIENTES;

#Podemos observar que os vendedores possuem bairro associados a eles. 
#Vamos aumentar em 30% o volume de compra dos clientes que possuem, 
#em seus endereços bairros onde os vendedores possuam escritórios.

SELECT A.CPF FROM CLIENTES A
INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO;

UPDATE CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.30;

SELECT * FROM CLIENTES;

# Atualizando o campo de férias usando de base os dados correspondedentes da tabela do banco de sucos vendas
SELECT * FROM VENDEDORES;

UPDATE VENDEDORES A INNER JOIN SUCOS_VENDAS.TABELA_DE_VENDEDORES B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.FERIAS = B.DE_FERIAS;