-- Retirement Eligibility Query
SELECT first_name, last_name
	FROM employees
	WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
	
-- Skill Drill Narrow these 3 years
-- 1) 1953
-- 2) 1954
-- 3) 1955
SELECT first_name, last_name
	FROM employees
	where birth_date BETWEEN '1953-01-01' AND '1953-12-31';
SELECT first_name, last_name
	FROM employees
	where birth_date BETWEEN '1954-01-01' AND '1954-12-31';
SELECT first_name, last_name
	FROM employees
	where birth_date BETWEEN '1955-01-01' AND '1955-12-31';
-- END OF SKILL DRILL

-- Number of Employees Retiring
SELECT COUNT(first_name)
	FROM employees
	WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create Table for Retirment
Select first_name, last_name
	INTO retirement_info
	FROM employees
	WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- test:
SELECT * FROM retirement_info;
