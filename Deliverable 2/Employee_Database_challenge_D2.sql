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
