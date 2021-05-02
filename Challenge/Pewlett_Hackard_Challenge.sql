-- Deliverable #1

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
select emp_no, first_name, last_name 
from employees;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
select title, from_date, to_date 
from titles;

-- Create a new table using the INTO clause, and join tables for employees eligible for retirement. -- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
select e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
into retirement_titles
from employees as e
	left join titles as ti
		on e.emp_no = ti.emp_no
where (e.birth_date between '1952-01-01' and '1955-12-31')
		and ti.to_date = ('9999-01-01');
		
select*from retirement_titles
order by emp_no asc;

-- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date asc;

-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.


select 
	count(title),
	title
into retiring_titles
from unique_titles
group by
	title
order by count desc;

select * from retiring_titles


-- Deliverable #2
--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
select emp_no,
	first_name,
	last_name,
	birth_date
from employees;
--Retrieve the from_date and to_date columns from the Department Employee table.
select from_date,
	to_date,
from dept_employee;

--Retrieve the title column from the Titles table.
select title * from titles

--Create a new table using the INTO clause.
--Join the Employees and the Department Employee tables on the primary key.
--Join the Employees and the Titles tables on the primary key.
--Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.

select
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	ti.title,
	de.from_date,
	de.to_date
into mentor_table
from employees as e
left join titles as ti
	on e.emp_no = ti.emp_no
left join dept_employee as de
	on e.emp_no = de.emp_no
where e.birth_date between '1965-01-01' and '1965-12-31'
and de.to_date = '9999-01-01'

--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--Order the table by the employee number.

select distinct on (emp_no) emp_no,
	first_name,
	last_name,
	birth_date,
	title,
	from_date,
	to_date
into unique_mentor
from mentor_table
order by emp_no asc;
