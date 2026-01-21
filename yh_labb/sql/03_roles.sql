-- Roles and the inheritance

-- Student inherit from Person
CREATE TABLE student (
    peroson_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    enrollment_date DATE DEFAULT current_date
);

-- Employee inherits from Person
CREATE TABLE Employee (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    title VARCHAR(50) NOT NULL, -- This title can be 'Educational leader, Teacher' etc.
    department VARCHAR(50)
);