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

-- 2. Featching the teachers and the courses they teach.
SELECT
    co.name AS course_name,
    p.first_name || ' ' || p.last_name AS teacher_name
FROM course co
JOIN course_teacher ct ON co.course_id = ct.course_id
JOIN person p ON ct.teacher_id = p.person_id;

-- 3 . Getting all the classes to see who is the Education Leader for each class.
SELECT
    c.name AS class_name,
    p.first_name || ' ' || p.last_name AS education_leader,
    l.name AS location
FROM class c 
JOIN person p OON c.education_leader_id = p.person_id
JOIN location l ON c.location_id = l.location_id;



