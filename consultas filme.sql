SELECT distinct title, language_id   
FROM sakila.film;


-- Crie uma consulta na base Sakila que retorne o nome de cada filme e o nome da linguagem desse filme 
SELECT a.title, b.name
FROM sakila.film a inner join
	sakila.language b
    on a.language_id = b.language_id;
    
    
SELECT first_name, last_name, count(*)   -- EXERCICIO crie uma consulta na base Sakila que retorne o nome de cada ator junto com a quantidade de filmes nos quais ele atuou. (junção das tabelas ator e os filmes que ele participa)
FROM sakila.actor a inner join 
sakila.film_actor b on
 a.actor_id = b.actor_id
group by first_name, last_name
order by 3 desc;


SELECT first_name, count(*)
FROM sakila.film_actor
group by first_name, last_name
order by 2 desc;

