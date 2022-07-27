-- Challenge 7 Deliverable 1
-- Employees eligible for retirement
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
    INNER JOIN titles AS ti
        ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Using Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;

-- Number of employees who are retiring by title
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title 
ORDER BY count DESC;

SELECT * FROM retiring_titles;

-- EXTRA Employees retiring by department
SELECT ut.emp_no,
    ut.first_name,
    ut.last_name,
    ut.title,
    di.dept_name
INTO dept_retiring
FROM unique_titles AS ut
    INNER JOIN dept_info AS di
ON (ut.emp_no = di.emp_no)
ORDER BY emp_no ASC;

SELECT * FROM dept_retiring;

-- EXTRA Number of employees retiring by department
SELECT COUNT (dr.emp_no), dr.dept_name
INTO retiring_dept_count
FROM dept_retiring AS dr
GROUP BY dr.dept_name 
ORDER BY count DESC;

SELECT * FROM retiring_dept_count;

-- Challenge 7 Deliverable 2
-- Employees eligible for mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS ti
        ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01')
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility

-- EXTRA Number of mentorship-eligible employees by title
SELECT COUNT (me.emp_no), me.title
INTO mentorship_titles
FROM mentorship_eligibilty AS me
GROUP BY me.title 
ORDER BY count DESC;

SELECT * FROM mentorship_titles;