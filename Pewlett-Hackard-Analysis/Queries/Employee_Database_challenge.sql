-- Deliverable 1 

-- You will need to remove block comments for queries to run!

-- unique retirements

/*SELECT 
	DISTINCT ON (a.emp_no) a.emp_no,
	a.first_name,
	a.last_name,
	b.title,
	b.from_date,
	b.to_date
INTO retirement_titles
FROM employees a
LEFT JOIN titles as b ON a.emp_no = b.emp_no
WHERE a.birth_date BETWEEN '1952-01-01' AND '1955-12-31';
*/

--retiring titles

/* select 
	title
	,count(*) as total
into retiring_titles
from retirement_titles
group by title
order by total desc; */

-- Deliverable 2

/*select
	distinct on (a.emp_no) a.emp_no
	,a.first_name
	,a.last_name
	,a.birth_date
	,b.from_date
	,b.to_date
	,c.title
into mentorship_eligibility
from public.employees a
left join dept_emp b on a.emp_no = b.emp_no
left join titles c on b.emp_no = c.emp_no
where (b.to_date = '9999-01-01') and (a.birth_date between '1965-01-01' and '1965-12-31')
ORDER BY a.emp_no asc; */