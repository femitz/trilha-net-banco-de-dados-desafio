-- 1 -  Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
FROM FILMES
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome='De Volta Para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano=1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano>=2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao>100 AND Duracao<150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- SELECT * FROM Atores WHERE Genero='M'
-- ou
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero='M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome
-- ou
-- SELECT * FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT f1.Nome, g3.Genero
FROM Filmes AS f1 INNER JOIN FilmesGenero AS g2 ON f1.Id = g2.IdFilme INNER JOIN Generos AS g3 ON g2.IdGenero = g3.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f1.Nome, g3.Genero
FROM Filmes AS f1 INNER JOIN FilmesGenero AS g2 ON f1.Id = g2.IdFilme INNER JOIN Generos AS g3 ON g2.IdGenero = g3.Id
WHERE g3.Genero='Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT filme.Nome, atores.PrimeiroNome, atores.UltimoNome , elenco.Papel
FROM Filmes AS filme 
INNER JOIN ElencoFilme AS elenco ON filme.Id = elenco.IdFilme 
INNER JOIN Atores as atores ON atores.Id = elenco.IdAtor