YrkesCo Database Architecture

Project Overview

This project implemnts a centrelied database for a school, this system is designed to manage Students, location, employee, consultants, teachers, programs, courses and programs across multiple locations. 

This system uses Postgresql, threw a container in docker. Docker ensures that the enviroment is consistent in development and production. 

Technical Specifications
Database Engine: PostgreSQL 16

Environment: Docker & Docker Compose

Modeling Strategy: Third Normal Form (3NF)

Key Features:

Table Inheritance: Utilizes a super-type Person table with sub-types Student and Employee to minimize data redundancy.

Security: Social security numbers (SSN) are isolated in a separate table (person_sensitive_data) with restricted access logic.

Data Integrity: Enforced via Foreign Keys and Cascade rules.
---------------------------------------------------------------------------------------------------------------------------
File Structure
The SQL scripts are located in the sql/ directory and must be executed in sequential order:

00_drop.sql: Resets the database by dropping existing tables.

01_setup.sql: Initializes schemas and extensions.

02_tables.sql: Defines the core table structure.

03_inheritance.sql: Implements the Person/Student/Employee hierarchy.

04_connections.sql: Establishes Foreign Key relationships.

05_security.sql: Creates the sensitive data table for GDPR compliance.

06_insert_data.sql: Populates the database with seed data (dummy data).

07_queries.sql: Contains analytical queries to verify system functionality.
-----------------------------------------------------------------------------------------------------------------------------
Installation & Setup
Prerequisites

. Docker

. Docker Compose

. Git
-----------------------------------------------------------------------------------------------------------------------------
Starting the enviroment: docker compose up -d


2. Initialize the Database

Execute the SQL scripts in the following order to build the schema and populate it with data:

docker compose exec -T postgres psql -U admin -d yrkesco < sql/00_drop.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/01_setup.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/02_tables.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/03_inheritance.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/04_connections.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/05_security.sql
docker compose exec -T postgres psql -U admin -d yrkesco < sql/06_insert_data.sql

------------------------------------------------------------------------------------------------------------------------------

verification & Usage
To verify that the database is functioning correctly and relationships are established, run the query script:

docker compose exec -T postgres psql -U admin -d yrkesco < sql/07_queries.sql
------------------
This script will output:

Class Leadership: Identifies the Education Leader for class 'SYS24'.

Course Syllabus: Lists all courses connected to the specific program.

Statistics: Aggregates the total number of courses and points.

Staffing: Displays which specific teachers (Consultants or Employees) are assigned to which courses.



-----------------------------------------------




