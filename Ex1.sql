/* 1-Trazer todos os dados. */

SELECT NOMELIVRO AS LIVRO, NOMEAUTOR AS AUTOR, SEXOAUTOR AS SEXO, NUMPAG AS PÁGINAS, NOMEEDITORA AS EDITORA,
    VALOR AS PREÇO, UFEDITORA AS ESTADO, ANOPUBLICADO AS PUBLICAÇÃO 
FROM LIVROS;

/* 2-Trazer o nome do livro e o nome da editora. */

SELECT NOMELIVRO AS LIVRO, NOMEEDITORA AS EDITORA 
FROM LIVROS;

/* 3–Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */

SELECT NOMELIVRO AS LIVRO, UFEDITORA AS ESTADO 
FROM LIVROS
WHERE SEXOAUTOR = 'M';

/* 4-Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */

SELECT NOMELIVRO AS LIVRO, NUMPAG AS PÁGINAS 
FROM LIVROS
WHERE SEXOAUTOR = 'F';

/* 5–Trazer os valores dos livros das editoras de São Paulo. */

SELECT VALOR AS PREÇO 
FROM LIVROS
WHERE UFEDITORA = 'SP';

/* 6–Trazer os dados dos autores do sexo masculino que tiveram 
   livros publicados por São Paulo ou Rio de Janeiro 
   (Questão Desafio). */

SELECT NOMELIVRO AS LIVRO, NOMEAUTOR AS AUTOR, SEXOAUTOR AS SEXO, NUMPAG AS PÁGINAS, NOMEEDITORA AS EDITORA,
    VALOR AS PREÇO, UFEDITORA AS ESTADO, ANOPUBLICADO AS PUBLICAÇÃO 
FROM LIVROS
WHERE SEXOAUTOR = 'M' AND 
    (UFEDITORA = 'SP' OR UFEDITORA = 'RJ'); 
