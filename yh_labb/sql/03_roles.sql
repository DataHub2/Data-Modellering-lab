-- Roles and the inheritance


-- Student inherit from Person
CREATE TABLE student (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    enrollment_date DATE,
    class_id INT
);

-- Employee inherits from Person
CREATE TABLE employee (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    hire_date DATE,
    department VARCHAR(50)
);

-- Consultant inherits from Person
CREATE TABLE consultant (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    company VARCHAR(100),
    contract_end DATE,
    f_skatt BOOLEAN,
    org_number VARCHAR(20),
    hourly_rate NUMERIC(8,2)
);

