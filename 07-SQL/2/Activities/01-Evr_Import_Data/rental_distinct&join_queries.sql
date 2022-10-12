--1. Retreive the latest rental for each customer's first and last name and email address.
select DISTINCT ON(r.customer_id) first_name, last_name, email, rental_date
from rental as r inner join customer as c
on r.customer_id = c.customer_id
order by r.customer_id,r.rental_date DESC



-- 2. Retreive the latest rental date for each title
Select distinct on (f.title) f.title, r.rental_date  
from rental as r inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on f.film_id = i.film_id
order by f.title, r.rental_date desc;

-- * there are 43 movies that have not been rented. Which are these?
--using a left join all rows from the table on the left appear in the results
select f.film_id, title, r.rental_date
from film as f left join inventory as i on f.film_id = i.film_id
left join rental r on i.inventory_id = r.inventory_id
where r.rental_date is null

--using a query in a query
select film_id,title
from film
where film_id NOT IN (select film_id from inventory)