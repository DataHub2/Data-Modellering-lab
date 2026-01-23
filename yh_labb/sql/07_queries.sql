-- In this file i i will make several queries to get data from the database.

-- 1. Getting all the studenys and see what class and program they are enrolled in.

SELECT
    p.first_name,
    p.last_name,
    c.name AS class,
    pr.name AS program
FROM student s
JOIN person p ON s.person_id = p.person_id
JOIN class c ON s.class_id = c.class_id
JOIN program pr ON c.program_id = pr.program_id;



