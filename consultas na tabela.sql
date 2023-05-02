select distinct a.first_name,
		b.title,
		a.last_update as date_atualizacao,
        a.last_name
from sakila.actor a,
	 sakila.film b
where first_name not like 'A%' -- facilitar a vida para escrever uma query longa. 
;

select *
from sakila.actor a,
	 sakila.film b -- Vai combinar a primeira linha da primeira tabela e combinar com todas. 
;

select count(*)
from sakila.actor a,
	 sakila.film b -- Quantidade de linhas que foi gerada.
;

SELECT distinct a.nome, c.nome    -- EXERCICIO 
FROM pacientes a,
	 consultas b,
	 medicos c
WHERE a.codp = b.codp and
	  b.codm = c.codm
      
      
SELECT distinct a.nome, b.nome
FROM pacientes a join 
	 consultas b on
	 a.codp = b.codp join
     medicos on
	b.codm = c.codm
      
      