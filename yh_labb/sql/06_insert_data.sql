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




