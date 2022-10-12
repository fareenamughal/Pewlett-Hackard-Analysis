select distinct customer_id, inventory_id, rental_date
from rental
order by rental_date DESC;

Select distinct customer_id
from rental;

SELECT DISTINCT ON(customer_id) customer_id, rental_date
FROM rental
WHERE customer_id = 130
ORDER BY customer_id, rental_date DESC;


-- if not using postgress for all customers
Select customer_id, max(rental_date)
from rental
where customer_id = 130
Group by customer_id

--1. Retreive the latest rental for each customer's first and last name and email address.
select distinct on (r.customer_id) first_name, last_name, email, rental_date
from rental as r inner join customer as c
on r.customer_id,c.rental_id
order by r.customer_id,r.rental_date desc;





-- 2. Retreive the latest rental date for each title
 

