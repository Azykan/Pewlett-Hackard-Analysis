SELECT
e.emp_no,
first_name,
last_name,
t.title,
t.from_date,
t.to_date

--INTO retirement_titles

FROM
employees e
INNER JOIN titles t
	ON e.emp_no = t.emp_no
	
WHERE
	e.birth_date between '1952-01-01' and '1955-12-31'

ORDER BY
emp_no


SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title

--INTO unique_titles

FROM
retirement_titles

WHERE to_date = '9999-01-01'

ORDER BY
emp_no,
from_date DESC ;


SELECT 
count(*) ,
title

--INTO retiring_titles
FROM
unique_titles
GROUP BY
title
ORDER BY
count(*) DESC ;



SELECT DISTINCT ON (emp_no)
e.emp_no,
e.first_name,
e.last_name, 
e.birth_date,
de.from_date, 
de.to_date,
t.title
--INTO mentorship_eligibilty
FROM 
employees AS e
INNER JOIN dept_emp AS de 
	ON e.emp_no = de.emp_no
INNER JOIN titles AS t
	ON e.emp_no = t.emp_no

WHERE
de.to_date = '9999-01-01'
AND e.birth_date between '1965-01-01' and '1965-12-31'

ORDER BY
emp_no






















