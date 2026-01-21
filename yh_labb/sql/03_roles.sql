-- Roles and the inheritance

-- Student inherit from Person
CREATE TABLE student (
    peroson_id INT PRIMARY KEY REFERENCES person(person_id) on DELETE CASCADE,
    enrollment_date DATE DEFAULT current_date
);