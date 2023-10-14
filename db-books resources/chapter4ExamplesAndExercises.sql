-- Chapter Four. Examples and exercises

-- The Natural Join Operation (example)
-- 	  common attributes appear only once in natural join

--For each student, find the set of courses the student has taken.
select * from student, takes -- to see which attributes are common
select *
from student natural join takes 


--List names of all students along with the title of the course they took
select * from course 
/* Theres a dept_name attribute in courses, students can take courses from other 
dept_name's too, so we cannot perform a natural join on all student,takes,course */
-- select name, title, dept_name from student natural join takes natural join course
-- ^ this is erronous for the given query
select name, student.dept_name, title, course.dept_name
from student natural join takes, course
where takes.course_id = course.course_id

-- The join..using operator
--	  allows to join using only specified attributes
-- 	  common attributes appear only once in join..using

--For each student, find the set of courses the student has taken.
select * from student, takes -- to see which attributes are common
select *
from student join takes using (id)

--List names of all students along with the title of the course they took
select name, student.dept_name, title, course.dept_name -- same output as the last query
from (student natural join takes) join course using (course_id)

-- The join..on operator
--    allows to specify any predicate for joining
-- 	  common attributes appear more than once in join..on

--For each student, find the set of courses the student has taken.
select * from student, takes -- to see which attributes are common
select *
from student join takes on student.id = takes.id

--List names of all students along with the title of the course they took
select name, student.dept_name, title, course.dept_name
from (student join takes on student.id = takes.id) 
		join course on (takes.course_id = course.course_id)

-- The outer join operation
--  (left/right/full) outer join preserves those tuples lost by join by creating  
--    tuples in the result containing null values as an example:
select * 
from student natural full outer join takes

--Find all the students who has not taken any course
select * 
from student natural left outer join takes
where course_id is null -- course_id is null will work not course_id = null.

-- the right outer join is symmetric to the left outer join. for example:
select * 
from takes natural right outer join student
where course_id is null -- it is an equivalent query

--Display list of all students in Comp. Sci. department, along with their course
-- sections, if any, that they have taken in Spring 2017
select * from student where dept_name = 'Comp. Sci.' --just checking
select *
from (select * from student where dept_name = 'Comp. Sci.') as A -- aliasing is needed in PG
		natural full outer join (select * from takes where semester = 'Spring' and year = 2017) as B 
/*select *
from student natural full outer join takes
where dept_name = 'Comp. Sci.' and semester = 'Spring' and year = 2017*/

-- The join..on/using clause can be used with outer joins. For example:
select *
from student left outer join takes using (id)
select *
from student left outer join takes on student.id = takes.id

-- Example from book on the difference of 'on' and 'where' in joining
select * from student left outer join takes on takes.id = student.id
select * from student left outer join takes on true where takes.id = student.id


-- Views 
--     Views are 'virtual relations' that are defined by the query and results are calculated
--     when a view is requested

--Create a view that lists all course sections offered by the Physics department in the Fall
-- 2017 semester, with the building and room number for each section
select course.course_id, sec_id, building, room_number -- check first
from course join section using(course_id)
where course.dept_name = 'Physics' and section.semester = 'Fall' and year = 2017

create view physics_fall_2017 as  -- [create view name_of_view(attr.) as (query)]
(select course.course_id, sec_id, building, room_number -- check first
from course join section using(course_id)
where course.dept_name = 'Physics' and section.semester = 'Fall' and year = 2017)


--Create view for clerk who can see everything from faculty except salary
select id, name, dept_name --check
from instructor

create view faculty as
(select id, name, dept_name
from instructor)

--Use the view to find all Physics courses offered in the Watson building

select course_id
from physics_fall_2017
where building = 'Watson'

-- The attribute names of a view can be specified as follows:
select dept_name, sum(salary) --check
from instructor 
group by dept_name

create view departments_total_salary(dept_name, total_salary) as
(select dept_name, sum(salary)
from instructor 
group by dept_name)


-- One view can be used in other views
select course_id --check
from physics_fall_2017
where building = 'Watson'

create view physics_fall_2017_watson as
(select course_id 
from physics_fall_2017 --itself is a view
where building = 'Watson')


-- 4.2
--a)Display a list of all instructors, showing each instructor’s ID and the number
--	of sections taught. Make sure to show the number of sections as 0 for
--	instructors who have not taught any section. Your query should use an
--	outer join, and should not use subqueries.
select instructor.name, count(semester) as cho
from instructor natural left outer join teaches
group by instructor.name
order by cho

--b)Write the same query as in part a, but using a scalar subquery and not
--	using outer join.
select distinct (instructor.name), (select count(course_id) from teaches where instructor.id = teaches.id) as cho
from instructor, teaches
order by cho


--c)Display the list of all course sections offered in Spring 2018, along with
-- 		the ID and name of each instructor teaching the section. If a section has
-- 		more than one instructor, that section should appear as many times in
-- 		the result as it has instructors. If a section does not have any instructor,
-- 		it should still appear in the result with the instructor name set to “—”.
select cho.course_id, cho.sec_id, coalesce(padarcho.id, '—') as id, coalesce(padarcho.name, '--') as name
from 
(
(select course_id, sec_id, semester, year from section where semester = 'Spring' and year = 2018) as cho
natural left outer join
(select instructor.id, name, course_id, sec_id, semester, year from instructor natural join teaches) as padarcho
)

--d)Display the list of all departments, with the total number of instructors
-- in each department, without using subqueries. Make sure to show departments
-- that have no instructors, and list those departments with an instructor
-- count of zero.
select department.dept_name, count(id) 
from department natural left outer join instructor
group by department.dept_name 


select * from student as S natural left outer join takes as T
--4.3)a)
-- select student.id, name, course_id, sec_id, semester, year from student, takes where student.id = takes.id
-- union
-- select id, name, null, null, null, null from student as S where S.id not in
-- (select student.id from student, takes where student.id = takes.id)







