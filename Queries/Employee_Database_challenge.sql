--Deliverable One: Part A

--Retrieve Employee Number, First Name & Last Name from Employees
--Retrieve Title, From Date & To Date From Titles

SELECT 
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date

--Add Retrieved Information into New Table

INTO retirement_titles

-- Join 'Employees' Table & 'Titles' Table on Primary Key (Employee Number)

FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)

--Filter Joined Data for Employees Born Between 1952 & 1955
--Order by Ascending Employee Number

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

--Deliverable One: Part B

--Use 'DISTINCT ON' to retrieve first Employee Number Occurrence
--Retrieve First Name, Last Name & Title

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

-- Add Retrieved Information into a New Table

INTO unique_titles

-- But Exclude Employees Who Have Left the Company

FROM retirement_titles as rt
WHERE to_date = '9999-01-01'

-- Order Data by Employee Number and Title

ORDER BY emp_no, to_date DESC;

--Deliverable One: Part C

--Count the Number of Unique Titles

SELECT COUNT (ut.title), ut.title

--Add Retrieved Information into a New Table

INTO retiring_titles
FROM unique_titles as ut

--Group New Table by Title

GROUP BY ut.title

--Sort Count by Descending Order

ORDER BY ut.count DESC;

----------------------------------

--Deliverable Two:


--Use 'DISTINCT ON' to retrieve first Employee Number Occurrence

--Retrieve Employee Number, First Name, Last Name & Birth Date from Employees
--Retrive From Date, To Date from Dept_Emp
--Retrieve Title from Titles

SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title

--Add Retrieved Information into New Table

INTO mentorship_elgibility

-- Join 'Employees' Table & 'Dept_Emp' Table on Primary Key (Employee Number)
-- Join 'Employees' Table & 'Titles' Table on Primary Key (Employee Number)

FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN titles as t ON e.emp_no = t.emp_no

--Filter for Current Employees
--Filter Joined Data for Employees Born in 1965

WHERE de.to_date = '9999-01-01' AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

--Order by Ascending Employee Number

ORDER BY emp_no ASC;

-- Count Mentees by Title

SELECT COUNT (me.title), me.title
INTO mentorship_count
FROM mentorship_elgibility as me
GROUP BY me.title
ORDER BY me.count DESC;
