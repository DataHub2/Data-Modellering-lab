-- Roles and the inheritance

-- Student inherit from Person
CREATE TABLE student (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    enrollment_date DATE DEFAULT current_date
    class_id INT
);

-- Employee inherits from Person
CREATE TABLE employee (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    hire_date DATE,
    department VARCHAR(50)
);


