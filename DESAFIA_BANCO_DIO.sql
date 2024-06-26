--1 NOME E ANO DOS FILMES
SELECT  F.NOME, 
		F.ANO 
FROM FILMES F;

--2 NOME E ANO ORDENADO POR ANO CRESCENTE
SELECT	F.NOME, 
		F.ANO, 
		F.DURACAO 
FROM FILMES F
ORDER BY F.ANO;

--3 DE VOLTA PARA O FUTURO, NOME, ANO E DURACAO
SELECT	F.NOME,
		F.ANO,
		F.DURACAO
FROM FILMES F
WHERE F.NOME LIKE '%FUTURO%';

--4 FILMES LANCADOS EM 1997
SELECT	F.NOME,
		F.ANO,
		F.DURACAO
FROM FILMES F
WHERE F.ANO = 1997;

--5 FILMES LANCADOS APOS 2000
SELECT	F.NOME,
		F.ANO,
		F.DURACAO
FROM FILMES F
WHERE F.ANO > 2000;

--6 FILMES COM DURACAO MAIOR QUE 100 E MENOR QUE 150, ORDENADO PELA DURACAO CRESCENTE
SELECT	F.NOME,
		F.ANO,
		F.DURACAO
FROM FILMES F
WHERE F.DURACAO > 100 
AND F.DURACAO < 150
ORDER BY F.DURACAO;

--7 QUANTIDADE DE FILMES LANCADOS NO ANO AGRUPANDO POR ANO, ORDENADO PELA DURACAO
SELECT	F.ANO,
		COUNT(1) QUANTIDADE
FROM FILMES F
GROUP BY F.ANO
ORDER BY QUANTIDADE DESC;

--8 ATORES DO GENERO MASCULONO, PRIMEIRO NOME E ULTIMO NOME
SELECT	A.PRIMEIRONOME NOME,
		A.ULTIMONOME SOBRENOME,
		A.GENERO
FROM ATORES A
WHERE A.GENERO = 'M';

--9 ATORES DO GENERO FEMININO PRIMEIRO NOME E ULTIMO NOME ORDENANDO PELO PRIMEIRO NOME
SELECT	A.PRIMEIRONOME NOME,
		A.ULTIMONOME SOBRENOME,
		A.GENERO
FROM ATORES A
WHERE A.GENERO = 'F'
ORDER BY NOME;

--10 NOME DO FILME E O GENERO
SELECT	F.NOME,
		G.GENERO
FROM FILMES F
JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
JOIN GENEROS G ON G.ID = FG.IDGENERO;

--11 NOME DO FILME E GENERO MISTERIO
SELECT	F.NOME,
		G.GENERO
FROM FILMES F
JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
JOIN GENEROS G ON G.ID = FG.IDGENERO
WHERE UPPER(G.GENERO) = 'MISTÉRIO';

--12 FILME E ATORES, PRIMIERO E ULTIMO NOME COM PAPEL
SELECT	F.NOME,
		A.PRIMEIRONOME + ' ' + A.ULTIMONOME ATOR,
		EF.PAPEL
FROM FILMES F
JOIN ELENCOFILME EF ON EF.IDFILME = F.ID
JOIN ATORES A ON A.ID = EF.IDATOR;