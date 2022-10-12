-- 1. What is the average cost to rent a film in pagila stores?
SELECT avg (rental_rate) as "Average Rental Rate"
from film; 

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
select rating, avg (rental_rate) as "Average Rental Rate"
from film
group by rating
order by "Average Rental Rate";

-- most expensive film to cheapest, descending order desc
select rating, ROUND(avg (rental_rate),2) as "Average Rental Rate"
from film
group by rating
order by "Average Rental Rate" desc
limit 3;

-- 3. How much would it cost to replace all the films in the database?
select sum(replacement_cost) as "total replacement cost"
from film;

-- 4. How much would it cost to replace all the films in each ratings category?
Select rating, sum(replacement_cost) as "total replacement cost" 
from film
group by rating;

-- 6. How long is the longest move in the database? The shortest?
Select max(length) as "longest movie" 
from film;

Select min(length) as "shortest movie"
from film;



-- most expensive film to cheapest, descending order desc, rounded to 2 decimal points, and results limited to top 3
select rating, ROUND(avg (rental_rate),2) as "Average Rental Rate"
from film
group by rating
order by "Average Rental Rate" desc
limit 3;












