-- a
SELECT * FROM course
WHERE (credits > 3);

-- b
SELECT * FROM classroom
WHERE (building = 'Packard' OR building = 'Watson');

-- c
SELECT * FROM course
WHERE dept_name = 'Comp. Sci.';

-- d
SELECT course.course_id, title, semester
FROM course, section
WHERE course.course_id = section.course_id AND semester = 'Fall';

-- e
SELECT tot_cred FROM student
WHERE tot_cred > 45 AND tot_cred < 90;

-- f
SELECT name FROM student WHERE name LIKE '%a'
    or name LIKE '%e'
    or name LIKE '%i'
    or name LIKE '%o'
    or name LIKE '%u';

-- g
SELECT course.course_id, title, prereq_id FROM course, prereq
WHERE course.course_id = prereq.course_id AND prereq_id = 'CS-101';