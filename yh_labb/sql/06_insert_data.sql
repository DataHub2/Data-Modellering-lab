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