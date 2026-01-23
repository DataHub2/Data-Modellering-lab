-- This Table below is for managing sensitive security information such as person Number.
-- Separating senseitive data to meet the requirements.
CREATE TABLE person_sensitive_data (
    person_id INT PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    person_nummer VARCHAR(15) UNIQUE NOT NULL
);