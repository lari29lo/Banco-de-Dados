SELECT  sum(amount) as soma, 
		count(distinct customer_id)  as qtd_clientes,  -- contar qnts distintos fizeram o pagamento
		max(amount) , min(amount)
    avg(amount) as media
FROM sakila.payment
where amount not between 5 and 10; -- aqui vai pegar o $ maior que 5 e menor que 10

Where customer_id in (10,12,14,16,18,20);



SELECT distinct customer_id, -- crie uma consulta que retorne os 10 pgmt (payments) de maior valor
				payment_date
FROM sakila.payment
order by 2 desc,1    -- (ordernar por) ordenando uma lista de colunas ou uma projeção, que ira começar pela segunda coluna
limit 20;				-- (desc) pela orderm descrescente


select  actor_id as id,
		first_name as nome,
		last_name as sobrenome,    -- filtro
        DATEDIFF(current_date(),last_update) as dias
from sakila.actor
where first_name like 'A%A' -- aqui é para consultar se na tabela o primeiro nome começa com 'A' e tem 'a' no nome
	and actor_id between 20 and 30; -- teste 
    
    
select count(*) 
from sakila.actor
where first_name like '%A'


SELECT distinct first_name, last_update
FROM sakila.actor
WHERE first_name like '%A';

SELECT distinct customer_id, sum(amount) as TotalGasto -- somar 
FROM sakila.payment
group by customer_id    -- agrupar os clientes
order by 2 desc          -- ordernar pela 2° coluna, decrescente 
limit 10;              -- e só os 10 clientes


SELECT distinct customer_id, sum(amount) as Total -- ESTRUTURA TOTAL de um select
FROM sakila.payment
where payment_date > '2005-05-25' -- where faz linha a linha
group by customer_id
having sum(amount) > 150 -- having, sempre ter uma função de agregação
order by 2 desc;


SELECT distinct release_year, title   -- atividade
FROM sakila.film
order by title , release_year; 


SELECT release_year, count(*)
FROM sakila.film
group by release_year
order by 1;


SELECT customer_id sum(amount) as Cliente
FROM sakila.customer
where store_id > 10
group by customer_id
order by 1 desc 
 
 
 SELECT *
 FROM sakila.customer,   -- PRODUTO CARTESIANO (ele faz uma combinação de duas tabelas) 
	  sakila.payment;    -- Join "implicito" um filtro do PD(lig~ção de chave prim. com chave estrang.
      
      
SELECT count(*)
 FROM sakila.customer,
	  sakila.payment;









