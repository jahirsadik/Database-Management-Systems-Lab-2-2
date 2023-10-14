---- a
SELECT title FROM course
WHERE credits = 3 AND dept_name = 'Comp. Sci.'

---- b
SELECT DISTINCT s_id FROM advisor
WHERE i_id = (SELECT id FROM instructor
			  WHERE name = 'Einstein')

---- c
SELECT max(salary) AS max_salary FROM instructor

---- d
SELECT id, name FROM instructor
WHERE salary = (SELECT max(salary) FROM instructor)


---- e
SELECT course_id, sec_id, count(id) as enrolment FROM takes
WHERE semester = 'Fall' AND year = '2017'
GROUP BY course_id, sec_id


---- f
SELECT max(enrolment) FROM
(SELECT course_id, sec_id, count(id) as enrolment FROM takes
WHERE semester = 'Fall' AND year = '2017'
GROUP BY course_id, sec_id) AS enrolments


---- g
SELECT course_id, sec_id, count(id) as enrolment FROM takes
WHERE semester = 'Fall' AND year = '2017'
GROUP BY course_id, sec_id
HAVING count(id) = (SELECT max(enrolment) FROM
(SELECT course_id, sec_id, count(id) as enrolment FROM takes
WHERE semester = 'Fall' AND year = '2017'
GROUP BY course_id, sec_id) AS enrolments)

