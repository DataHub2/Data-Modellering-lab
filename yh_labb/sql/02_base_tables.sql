-- These are the base tables

CREATE TABLE program (
    program_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);
