Select * from actor
--1. Determine the count of actor first name ordered in descending order
select first_name, count(first_name) from actor
group by first_name
ORDER BY first_name desc;


--2. Determine the average rental duration from each rating rounded to two decimals. Order these in ascending order.
Select rating, ROUND(avg(rental_duration),2) as "avg rental duration" from film
GROUP BY rating
ORDER BY "avg rental duration"

--3. Determine the top 10 average replace costs for movies by their length
SELECT length, ROUND(avg(replacement_cost),2) as "avg replace costs" from film
GROUP BY length
ORDER BY "avg replace costs" DESC
Limit 10;


-- Using the city and country tables, determine how many cities in each country
Select country, count(city) 
from country 
inner join city
on country.country_id = city.country_id
group by country ;


-- Using the city and country tables, determine the count of countries in descending order
