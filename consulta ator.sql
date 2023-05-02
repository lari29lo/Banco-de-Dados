SELECT a.first_name, a.last_name, c.title

FROM sakila.actor a inner join        -- conecta com o on
	 sakila.film_actor b
	ON  a.actor_id = b.actor_id        -- on criterio de criação
     inner join sakila.film c
     on c.film_id = b.film_id
     order by 1,2 ;                    -- tem que ser sempre de deus em duas


SELECT distinct a.first_name,
 a.last_name,
 e.name as categoria

FROM sakila.actor a 
    INNER JOIN sakila.film_actor b 
    ON a.actor_id= b.actor_id 
    INNER JOIN  sakila.film c
    ON c.film_id = b.film_id
    INNER JOIN sakila.film_category d 
	ON d.film_id=c.film_id
   INNER JOIN sakila.category e on e.category_id = d.category
   order by 1,2 desc
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    