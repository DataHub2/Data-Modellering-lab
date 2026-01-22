-- Here i work on the Juction and connection tables
-- Connecting the independent tables together

-- Class table, it links program and location and also Education Leader.
CREATE TABLE class (
    class_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    start_date DATE,
    end_date DATE,
    program_id INT REFERENCES program(program_id) ON DELETE CASCADE,
    location_id INT REFERENCES location(location_id),
    education_leader_id INT REFERENCES person(person_id) 
);

--Juction Table: program to course
CREATE TABLE program_course (
    program_id INT REFERENCES program(program_id) ON DELETE CASCADE,
    course_id INT REFERENCES course(course_id) ON DELETE CASCADE, 
    PRIMARY KEY (program_id, course_id)
);

-- Juction Table: course to teacher
CREATE TABLE course_teacher (
    course_id INT REFERENCES course(course_id) ON DELETE CASCADE,
    teacher_id INT REFERENCES person(person_id) ON DELETE CASCADE,
    PRIMARY KEY (course_id, teacher_id)
);

-- This is so you may link Stduent to class.
ALTER TABLE student
ADD CONSTRAINT fk_student_class
FOREIGN KEY (class_id) REFERENCES class(class_id);

