--DELIVERABLE 1
-- 1.Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name 
FROM employees;

-- 2.Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles;

-- 3.Create a new table using the INTO clause.
SELECT emp_no, first_name, last_name 
INTO emp_rev
FROM employees;

Select * from emp_rev;

SELECT title, from_date, to_date
INTO titles_rev
FROM titles;


Select * from titles_rev;

-- 4.Join both tables on the primary key.
---titles_rev table cannot be used to join to employees or employees_rev table as it does not has a primary/foreign key linking to the tables.
--Employees table and the titles table being joined
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 tl.title,
	 tl.from_date,
     tl.to_date
FROM employees as es
JOIN titles as tl
ON es.emp_no = tl.emp_no
ORDER BY emp_no;


-- 5.Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 tl.title,
	 tl.from_date,
     tl.to_date
FROM employees as es
JOIN titles as tl
ON es.emp_no = tl.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- 6.Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 tl.title,
	 tl.from_date,
     tl.to_date
INTO retirement_titles
FROM employees as es
JOIN titles as tl
ON es.emp_no = tl.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- 7.Before you export your table, confirm that it looks like this image:
--Check if retirement_titles table contains data before exporting as csv.
SELECT * from retirement_titles


-- 8.Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
----Retirement titles for all employees(including those who have left) approaching retirement 
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 tl.title,
	 tl.from_date,
     tl.to_date
INTO retirement_titles
FROM employees as es
JOIN titles as tl
ON es.emp_no = tl.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


-- 9.Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
SELECT emp_no, 
	first_name,
	last_name,
	title
FROM retirement_titles;

-- These columns will be in the new table that will hold the most recent title of each employee.
SELECT emp_no, 
	first_name,
	last_name,
	title
INTO recent_titles
FROM retirement_titles;


-- 10.Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title,
	to_date
FROM retirement_titles
ORDER BY emp_no, to_date DESC ;


-- 11.Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ;


-- 12.Create a Unique Titles table using the INTO clause.
----Unique titles for all present employees approaching retirement 
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC ;

-- 13.Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC ;

-- 14.Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
---unique_titles.csv saved 

-- 15.Before you export your table, confirm that it looks like this image:
----Unique titles for all present employees approaching retirement 
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
-- INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC ;

-- 16.Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
---number of employees by their most recent job title who are about to retire
SELECT count(emp_no) AS "emp_count", title
FROM unique_titles
GROUP BY title

-- 17.First, retrieve the number of titles from the Unique Titles table.
SELECT count(emp_no) AS "emp_count", title
FROM unique_titles
GROUP BY title

-- 18.Then, create a Retiring Titles table to hold the required information.
SELECT count(emp_no) AS "emp_count", title
FROM unique_titles
-- INTO retiring_titles
GROUP BY title
ORDER BY emp_count DESC;


-- 19.Group the table by title, then sort the count column in descending order.
SELECT COUNT(emp_no) AS "emp_count", title
-- INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY emp_count DESC; 

SELECT count(emp_no) AS "emp_count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY emp_count DESC;

-- 20.Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
---retiring_titles.csv
-- 21.Before you export your table, confirm that it looks like this image:
-- 22.Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.


--- 


--Deliverable 2: The Employees Eligible for the Mentorship Program (30 points) 

---mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965
---In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

-- 1.Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT emp_no, 
	first_name, 
	last_name, 
	birth_date 
FROM employees

-- 2.Retrieve the from_date and to_date columns from the Department Employee table.
SELECT from_date, 
	to_date
FROM dept_emp

-- 3.Retrieve the title column from the Titles table.
SELECT title
FROM titles;

-- 4.Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (emp_no) emp_no, 
	title,
	from_date
FROM titles
ORDER BY emp_no, from_date 

-- 5.Create a new table using the INTO clause.
---current_titles includes tiles for employees at start date 
SELECT DISTINCT ON (emp_no) emp_no, 
	title,
	from_date
INTO current_titles
FROM titles
ORDER BY emp_no, from_date DESC

-- 6.Join the Employees and the Department Employee tables on the primary key.
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 es.birth_date, 
	 de.from_date, 
	 de.to_date
INTO employees_dept_emp
FROM employees as es
JOIN dept_emp as de
ON es.emp_no = de.emp_no



WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


-- 7.Join the Employees and the Titles tables on the primary key.
SELECT ede.emp_no,
     ede.first_name,
	 ede.last_name,
	 ede.birth_date,
	 ede.from_date,
     ede.to_date, 
	 ct.title
-- INTO mentorship_eligibilty
FROM employees_dept_emp as ede
JOIN current_titles as ct
ON ede.emp_no = ct.emp_no
WHERE (ede.to_date = '9999-01-01')
AND (ede.birth_date BETWEEN '1965-01-01' AND '1965-12-31' )
ORDER BY emp_no;

--Refactored SQL code - joined Employees, dept_emp and current_titles tables
SELECT es.emp_no,
     es.first_name,
	 es.last_name,
	 es.birth_date, 
	 de.from_date, 
	 de.to_date,
	 ct.title
INTO mentorship_eligibilty
FROM employees as es
JOIN dept_emp as de
ON es.emp_no = de.emp_no
JOIN current_titles as ct
ON es.emp_no = ct.emp_no
WHERE (de.to_date = '9999-01-01')
AND (es.birth_date BETWEEN '1965-01-01' AND '1965-12-31' )
ORDER BY emp_no;


-- 8.Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- 9.Order the table by the employee number.
-- 10.Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 11.Before you export your table, confirm that it looks like this image:


---