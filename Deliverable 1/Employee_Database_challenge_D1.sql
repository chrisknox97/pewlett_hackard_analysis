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

INTO unique_titles_three

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