/* 01. */
select Nome, FORMAT(Ano, '#') as Ano from Filmes;


/* 02. */
select Nome, FORMAT(Ano, '#') as Ano from Filmes
  order by ano;


/* 03. */
select Nome, FORMAT(Ano, '#') as Ano, Duracao from Filmes
  where Nome='De Volta para o Futuro';


/* 04. */
select Nome, FORMAT(Ano, '#') as Ano, Duracao from Filmes
  where ano = 1997;


/* 05. */  
select Nome, FORMAT(Ano, '#') as Ano, Duracao from Filmes
  where ano > 2000;


/* 06. */
select Nome, FORMAT(Ano, '#') as Ano, Duracao from Filmes
  where duracao > 100 and duracao < 150
  order by duracao;


/* 07. */
select FORMAT(Ano, '#') as Ano, count(Ano) as Quantidade from Filmes
  group by Ano
  order by Quantidade desc;


/* 08. */
select ID, PrimeiroNome, UltimoNome, Genero from Atores
  where Genero = 'M';


/* 09. */
select Id, PrimeiroNome, UltimoNome, Genero from Atores
  where Genero = 'F'
  order by PrimeiroNome;


/* 10. */
select f.Nome, g.Genero from Filmes f, FilmesGenero fg, Generos g where f.Id = fg.IdFilme and g.Id = fg.IdGenero;


/* 11. */
select f.Nome, g.Genero from Filmes f, FilmesGenero fg, Generos g where f.Id = fg.IdFilme and g.Id = fg.IdGenero and g.Genero = 'Mistério';


/* 12. */
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
  inner join ElencoFilme ef on f.Id = ef.IdFilme
  inner join Atores a on ef.IdAtor = a.Id;
