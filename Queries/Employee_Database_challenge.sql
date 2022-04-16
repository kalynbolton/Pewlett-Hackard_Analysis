-- Deliverale 1: Create table for retiring employees by title and export
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
first_name,
last_name,
title
INTO unique_ret_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Counting the number of each employee/title
SELECT count (title) AS count, title
INTO retiring_titles
FROM unique_ret_titles
GROUP BY title
ORDER BY count DESC; 