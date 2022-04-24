--Create table of retirement titles
SELECT e.emp_no, e.first_name, e.last_name,
       t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT emp_no, first_name, last_name, title
FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no, rt.first_name, rt.last_name,
       rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT emp_no, first_name, last_name, title
FROM unique_titles;

--Create table with number of people retiring per current job title 
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;
SELECT * FROM retiring_titles;

--Create table for mentorship
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
--INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
WHERE (de.to_date = '9999-01-01')	
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY emp_no;	

SELECT COUNT(emp_no), title FROM mentorship_eligibilty
GROUP BY title ORDER BY COUNT(emp_no) DESC;

--Create table for mentorship
SELECT DISTINCT ON(me.emp_no) me.emp_no, me.birth_date, me.to_date, me.title,
	de.dept_no
INTO dept_mentorship
FROM mentorship_eligibilty AS me
INNER JOIN dept_emp AS de
	ON (de.emp_no = me.emp_no)
SELECT DISTINCT ON(dm.emp_no) dm.dept_no, dm.title, dm.emp_no,
	d.dept_name
INTO dept_name_mentorship
FROM dept_mentorship AS dm
INNER JOIN departments AS d
	ON (dm.dept_no = d.dept_no);
SELECT COUNT(dept_name), title, dept_name
FROM dept_name_mentorship
GROUP BY dept_name, title ORDER BY COUNT(title) DESC;


SELECT * FROM dept_name_mentorship


