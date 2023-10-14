-- Chapter Three Exercises

-- 3.1
-- find the courses in the Comp. Sci. dept that have 3 credits.
select title from course where dept_name = 'Comp. Sci.'

-- find the id's of all students who were taught by
-- an instructor named Einstein, make sure there are no duplicates
select distinct (S.id) 
from takes as S, teaches as T
where S.course_id = T.course_id and
	S.sec_id = T.sec_id and S.semester = T.semester
	and S.year = T.year and T.id in (select id from instructor where name = 'Einstein');
	
-- find the highest salary of any instructor
select max(salary) from instructor

-- find all instructors earning the highest salary
select id, name from instructor 
where salary = (select max(salary) from instructor)

-- find the enrollment of each section that was offered in Fall 2017
select count(distinct T.id)
from takes as T, section as S
where S.semester = 'Fall' and S.year = 2017 and T.course_id = S.course_id and T.sec_id = S.sec_id
and S.year = T.year and S.semester = T.semester
group by(S.course_id, S.sec_id, S.semester, S.year)

-- find the maximum enrollment, across all sections in Fall 2017
select max(temp.counts) as max_Enrollment
from (select count(distinct T.id)
			from takes as T, section as S
			where S.semester = 'Fall' and S.year = 2017 and T.course_id = S.course_id and T.sec_id = S.sec_id
	  				and S.year = T.year and S.semester = T.semester
			group by(S.course_id, S.sec_id, S.semester, S.year)
	  	)as temp(counts)

-- find the sections that had the maximum enrollment in Fall 2017
select course_id, sec_id, semester, year
from (select S.course_id, S.sec_id, S.semester, S.year, count(distinct T.id) 
			from takes as T, section as S
			where S.semester = 'Fall' and S.year = 2017 and T.course_id = S.course_id and T.sec_id = S.sec_id
	  				and S.year = T.year and S.semester = T.semester
			group by(S.course_id, S.sec_id, S.semester, S.year)
	  	)as temp(course_id, sec_id, semester, year, counts) 
where temp.counts = (select max(tempu.counts) as max_Enrollment
from (select count(distinct T.id)
			from takes as T, section as S
			where S.semester = 'Fall' and S.year = 2017 and T.course_id = S.course_id and T.sec_id = S.sec_id
	  				and S.year = T.year and S.semester = T.semester
			group by(S.course_id, S.sec_id, S.semester, S.year)
	  	)as tempu(counts))
-- different approach
with enrolment_table as
(select section.course_id, section.sec_id, count(distinct takes.id) as enrolment
from takes, section
where takes.semester = 'Fall'
    and takes.year = 2017
    and takes.course_id = section.course_id
    and section.sec_id = section.sec_id
group by section.course_id, section.sec_id)
select course_id, sec_id
from enrolment_table
where enrolment = (select max(enrolment)
                    from enrolment_table)
	
-- 3.2
/*
Suppose you are given a relation grade points(grade, points) that provides a conversion
from letter grades in the takes relation to numeric scores; for example,
an “A” grade could be specified to correspond to 4 points, an “A−” to 3.7 points,
a “B+” to 3.3 points, a “B” to 3 points, and so on. The grade points earned by a
student for a course offering (section) is defined as the number of credits for the
course multiplied by the numeric points for the grade that the student received.
Given the preceding relation, and our university schema, write each of the
following queries in SQL. You may assume for simplicity that no takes tuple has
the null value for grade.
*/

--Find the total grade points earned by the student with ID '12345', across
-- all courses taken by the student.	
select sum(grade_points.points) as total_grade_points
from takes, grade_points 
where id = '12345' and takes.grade = grade_points.grade

--Find the grade point average (GPA) for the above student, that is, the total
-- grade points divided by the total credits for the associated courses.
select sum(credits * points) / sum(credits)
from takes, grade_points, course
where id = '12345' and takes.course_id = course.course_id
	and takes.grade = grade_points.grade

--Find the ID and the grade-point average of each student
select id , sum(credits * points) / sum(credits) as average_GPA
from takes, grade_points, course
where takes.course_id = course.course_id
	and takes.grade = grade_points.grade
group by (id)

-- Now reconsider your answers to the earlier parts of this exercise under the assumption that some grades might be null. Explain whether your
-- solutions still work and, if not, provide versions that handle nulls properly.
-- reconsidered solution to b
select sum(credits * points) / sum(credits) as GPA
from takes, grade_points, course
where id = '12345' and takes.course_id = course.course_id
	and takes.grade = grade_points.grade
union
select null as GPA
from student 
where id = '12345' and not exists(select * from takes where id = '12345')
-- reconsidered solution to c
(select id , sum(credits * points) / sum(credits) as average_GPA
from takes, grade_points, course
where takes.course_id = course.course_id
	and takes.grade = grade_points.grade
group by (id))
union
(select id, null as average_GPA
from student
where not exists(select * from takes where student.ID = takes.ID))


--3.8
-- Find the ID of each customer of the bank who has an account but not a loan.
select id from depositor 
except 
select id from borrower
-- Find the ID of each customer who lives on the same street and in the same
--   city as customer '12345'.
select C.id 
from customer as C, customer as D
where C.id = '12345' and C.customer_city = D.customer_city
	and C.customer_street = D.customer_street
	
-- Find the name of each branch that has at least one customer who has an
--   account in the bank and who lives in “Harrison”.

select distinct Br.branch_name
from account as Br
where Br.branch_name =some (select branch_name
							 	from customer, depositor
							 	where customer_ID = depositor.ID
							 	and depositor.account_number = Br.account_number)
								and customer.customer_city = 'Harrison'


-- 3.9
-- Find the ID, name, and city of residence of each employee who works for
--  “First Bank Corporation”.
select P.ID, P.person_name, P.city
from employee as P, works as W
where W.id = p.id and w.company_name = 'First Bank Corporation'

-- Find the ID, name, and city of residence of each employee who works for
--   “First Bank Corporation” and earns more than $10000.
select P.ID, P.person_name, P.city
from employee as P, works as W
where W.id = p.id and w.company_name = 'First Bank Corporation'
		and w.salary > 10000

-- Find the ID of each employee who does not work for “First Bank Corporation”.
select P.ID
from works as P
where w.company_name <> 'First Bank Corporation'

-- Find the ID of each employee who earns more than every employee of
--    “Small Bank Corporation”.
select W.id
from works as W
where W.salary > all(select salary from works where )

-- Assume that companies may be located in several cities. Find the name
--  of each company that is located in every city in which “Small Bank Corporation”
--   is located.
select C.company_name
from company as C
where C.city not exists(select distinct (city) 
						from company 
						where company_name = 'First Bank Corporations'
						except
						select distinct (city) 
						from company as T
					   	where C.company_name = T.company_name)
								
-- Find the name of the company that has the most employees (or companies,
--	in the case where there is a tie for the most).
select company_name
from works
group by company_name
having count(distinct ID) >= all (select company_name
from works
group by company_name)

-- Find the name of each company whose employees earn a higher salary,
--  on average, than the average salary at “First Bank Corporation”.

select W.company_name 
from works as W
group by company_name
having avg(salary) >= (select avg(salary)
					  	from works
					  	where company_name = 'First Bank Corporation')

-- Modify the database so that the employee whose ID is '12345' now lives in “Newtown
update employee set city = 'Newtown' where id = '12345'

-- Give each manager of “First Bank Corporation” a 10 percent raise unless
--  the salary becomes greater than $100000; in such cases, give only a 3
--   percent raise.
update works as T
set works.salary = (case
					when salary*1.1 <= 100000 then salary * 1.1
					else salary * 1.03
					end)
where T.id in (select manages.id from manages) 
and T.company_name = 'First Bank Corporation'
