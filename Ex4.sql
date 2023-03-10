/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

--Query
SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE;

/* RELATORIO DE HOMENS */

--Query
SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';


UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE = '7'

/* RELATORIO DE MULHERES */

--Query
SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

/* QUANTIDADE DE HOMENS E MULHERES */

--Query
SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

--Query
SELECT C.IDCLIENTE, C.EMAIL
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND E.BAIRRO = 'CENTRO'
AND E.CIDADE = 'RIO DE JANEIRO'
AND (NOT T.TIPO = 'CEL');

/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

--Query
SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
WHERE T.TIPO = 'CEL'
AND E.ESTADO = 'RJ';

/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

--Query
SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
WHERE C.SEXO = 'F'
AND E.ESTADO = 'SP';
