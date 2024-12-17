-- Consulta 1 -> Buscar o nome e ano dos filmes

SELECT nome,ano from Filmes

-- Consulta 2 -> Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome,ano,duracao from Filmes order by ano asc

-- Consulta 3 -> Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome,Ano,Duracao from Filmes where nome = 'De volta para o futuro'

-- Consulta 4 -> Buscar os filmes lançados em 1997

SELECT * FROM Filmes where ano = 1997


-- Consulta 5 -> Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes where ano > 2000

-- Consulta 6 -> Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes where Duracao > 100 AND Duracao < 150 order by Duracao asc

-- Consulta 7 -> Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC;

-- Consulta 8 -> Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome,UltimoNome FROM Atores where Genero = 'M'

-- Consulta 9 -> Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome,UltimoNome FROM Atores where Genero = 'F' ORDER BY PrimeiroNome asc

-- Consulta 10 -> Buscar o nome do filme e o gênero

SELECT f.Nome, g.Genero from filmes as f 
inner join FilmesGenero fg on fg.IdFilme = f.id
inner join generos g on g.id = fg.IdGenero

-- Consulta 11 -> Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome, g.Genero from filmes as f 
inner join FilmesGenero fg on fg.IdFilme = f.id
inner join generos g on g.id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- Consulta 12 -> Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from filmes as f 
inner join ElencoFilme ef on ef.IdFilme = f.id
inner join Atores a on a.id = ef.IdAtor


