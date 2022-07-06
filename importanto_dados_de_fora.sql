USE vendas_sucos;

# USANDO UMA TABELA DE FORA PARA IMPORTAR OS DADOS
SELECT * FROM sucos_vendas.tabela_de_produtos;

SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
SABOR, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA, TAMANHO
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);

SELECT * FROM PRODUTOS;

# USANDO UM SELECT DE UMA TABELA DE UM BANCO DE DADOS DE FORA PRA IMPORTAR SEUS DADOS.
INSERT INTO PRODUTOS
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
SABOR, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA, TAMANHO
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);

SELECT * FROM PRODUTOS;