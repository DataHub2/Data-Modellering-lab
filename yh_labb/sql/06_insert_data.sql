-- This file is for inserting the data in to the tables

-- This is  the Base Data 
INSERT INTO location (name, address) VALUES
('Stockholm', 'Sveavägen 10'),
('Göteborg', 'Kungsportsavenyen 5');

INSERT INTO program (name, description) VALUES
('Systemutveckling', 'Advanced backend och strategi'),
('Data Engineer', 'Big Data, Cloud och AI-lösningar');

INSERT INTO course (course_code, name, points, description) VALUES
('JAV-ADV', 'Avancerad Java & Spring Boot', 50, 'Backend-utveckling med moderna ramverk'),
('DATA-ENG', 'Big Data & Cloud Architecture', 40, 'Hantering av stora datamängder i AWS/Azure'), 
('DB-SQL', 'Datalagring & SQL', 25, 'Databasdesign och avancerade querys'); 


-- 2, Person Data
INSERT INTO person (first_name, last_name, email, phone) VALUES 
('Denzel', 'Washington', 'denzel.boss@yrkesco.se', '070-111222'),       
('Conor', 'Benn', 'conor.java@yrkesco.se', '070-333444'),              
('Jon', 'Jones', 'bones@data-consulting.com', '070-999888'),           
('Antonio', 'Rudiger', 'toni.code@student.yrkesco.se', '070-555666'),  
('Francis', 'Underwood', 'frank.u@student.yrkesco.se', '070-666666'),  
('Lisa', 'Yllander', 'lisa.y@student.yrkesco.se', '070-777777');

-- 3. Roles

-- Employees 
INSERT INTO employee (person_id, hire_date, department) VALUES 
(1, '2015-01-01', 'Management'), -- Denzel (Education Leader)
(2, '2022-05-15', 'Education');  -- Conor Benn (Teacher in Java )


-- Consultant 
INSERT INTO consultant (person_id, company, hourly_rate, f_skatt) VALUES 
(3, 'Bones Data AB', 1500.00, TRUE); -- Jon Jones Consultant

-- Students 
INSERT INTO student (person_id, enrollment_date) VALUES 
(4, '2024-08-20'), -- Antonio
(5, '2024-08-20'), -- Francis
(6, '2024-08-20'); -- Lisa


-- 4. Sensitive Data 
INSERT INTO person_sensitive_data (person_id, person_nummer) VALUES 
(1, '19541228-0001'), 
(2, '19960928-0002'), 
(3, '19870719-0003'), 
(4, '19930303-0004'), 
(5, '19591105-0005'), 
(6, '19900101-0006');

-- 5. Connections

-- Create a Class: SYS24
-- Program ID 1, Location ID 1 (Stockholm), Leader ID 1 (Denzel)
INSERT INTO class (name, start_date, end_date, program_id, location_id, education_leader_id) VALUES 
('SYS24', '2024-08-20', '2026-06-05', 1, 1, 1);

-- Links Students to the Class. Note thatthey all studie system development
UPDATE student SET class_id = 1 WHERE person_id IN (4, 5, 6);
