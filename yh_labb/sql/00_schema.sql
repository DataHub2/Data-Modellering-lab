-- Creating schema 'skol_info' and setting it as the default search path for the database 'yrkesco'
CREATE SCHEMA IF NOT EXISTS skol_info;
-- is set to defualt search path so that the new tables land in skol_info
ALTER DATABASE yrkesco SET search_path TO skol_info, public; 