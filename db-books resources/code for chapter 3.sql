select name 
from instructor 
where dept_name = 'Comp. Sci.' and salary > 70000;

select name, instructor.dept_name, department.building
from instructor, department 
where instructor.dept_name = department.dept_name


select dept_name 
from department 
where building like '%Watson%'

select name 
from instructor 
where name like '_____%'

select * 
from instructor 
order by salary desc, name asc;

select name 
from instructor
where salary between 90000 and 100000

select name, course_id
from instructor, teaches
where (instructor.id, dept_name) = (teaches.id, 'Biology')

select course_id
from section
where semester = 'Fall' and year = 2017
union
select course_id
from section
where semester = 'Spring' and year = 2018


select course_id
from section
where semester = 'Fall' and year = 2017
except all
select course_id
from section
where semester = 'Spring' and year = 2018

select name from instructor where salary is not null

select dept_name, Trunc(avg(salary), 2) as hawwa
from instructor
group by dept_name

select count(distinct instructor.id):: INTEGER as ID
from instructor, teaches
where instructor.id = teaches.id
		and semester = 'Spring' and year = 2018
group by dept_name;


select dept_name, avg(salary) as avg_salary
from instructor
group by dept_name
having avg(salary) > 90000

select course_id, semester, year, sec_id, Trunc(avg(tot_cred), 2) as Average_cred 
from student, takes
where student.id = takes.id and 
		takes.year = 2017
group by course_id, semester, year, sec_id
having count(student.id) >= 2


select course_id 
from section 
where semester = 'Fall' and year = 2017
		and (course_id, sec_id) in (select course_id, sec_id
						 	from section
						 	where semester = 'Spring'
						 			and year = 2018)

select count(distinct(ID)) as chodna
from takes
where (course_id, sec_id, semester, year) in (select course_id, sec_id, semester, year
	  	from teaches
	  	where teaches.id = '10101')


select name
from instructor
where salary > some (select salary from instructor
							   	where dept_name = 'Biology')

select name
from instructor
where salary > all (select salary from instructor
							   	where dept_name = 'Biology')
								
select dept_name, avg(salary)
from instructor
group by dept_name
having avg(salary) >= all (select avg(salary)
						  	from instructor
						  	group by dept_name)
								
