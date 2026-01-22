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
