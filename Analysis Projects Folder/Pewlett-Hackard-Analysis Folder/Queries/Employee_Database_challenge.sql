---Employee_Challenge_Starter_code.sql contains the detailed workings supporting each areas.

---Employee_Database_challenge.sql - this file contains the final code that generates the required csv files.

--Deliverable 1: The Number of Retiring Employees by Title (50 points)

---DELIVERABLE 1 (complete working are in Employee_Challenge_starter_code.sql)

-- 1.Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- 2.Retrieve the title, from_date, and to_date columns from the Titles table.
-- 3.Create a new table using the INTO clause.
-- 4.Join both tables on the primary key.
---titles_rev table cannot be used to join to employees or employees_rev table as it does not has a primary/foreign key linking to the tables.
--Employees table and the titles table being joined
-- 5.Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
-- 6.Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 7.Before you export your table, confirm that it looks like this image:
--Check if retirement_titles table contains data before exporting as csv.

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
-- These columns will be in the new table that will hold the most recent title of each employee.
-- 10.Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

-- 11.Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
--12.Create a Unique Titles table using the INTO clause
-- 13.Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
----Unique titles table created for all present employees approaching retirement sorted in ascending order for emp_no and descending order for to_date
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC ;

----check unique titles data for all present employees approaching retirement sorted in ascending order for emp_no and descending order for to_date


-- 14.Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
---unique_titles.csv saved 
-- 15.Before you export your table, confirm that it looks like this image:

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

-- 19.Group the table by title, then sort the count column in descending order.
SELECT count(emp_no) AS "emp_count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY emp_count DESC;

-- 20.Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
---retiring_titles.csv

-- 21.Before you export your table, confirm that it looks like this image:
-- 22.Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.


--Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)
---mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965
---In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

-- 1.Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- 2.Retrieve the from_date and to_date columns from the Department Employee table.
-- 3.Retrieve the title column from the Titles table.
-- 4.Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- 5.Create a new table using the INTO clause.
-- 6.Join the Employees and the Department Employee tables on the primary key.
-- 7.Join the Employees and the Titles tables on the primary key.
-- 8.Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- 9.Order the table by the employee number.
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

-- 10.Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
--Refactored SQL code - joined Employees, dept_emp and current_titles tables


-- 11.Before you export your table, confirm that it looks like this image:

---