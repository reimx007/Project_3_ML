-- READ FOR LOADING CSV
-- 1. INITIALIZE POSTGRES SERVER
-- 2. LOAD PG ADMIN
-- 3. CREATE DATABASE TITLED : "rent_predict"
-- 4. RUN THE FOLLOWING IN QUERY TOOL--

-- create the table 
CREATE TABLE historic (
  ID INT PRIMARY KEY,
  LOCATION TEXT,
  BEDROOM_SIZE TEXT,
  AVG_2014 DECIMAL,
  AVG_2015 DECIMAL,
  AVG_2016 DECIMAL,
  AVG_2017 DECIMAL,
  AVG_2018 DECIMAL,
  AVG_2019 DECIMAL,
  AVG_2020 DECIMAL
);

--drop table if adjustments need to be made
--ONLY DO THIS IF THE TABLE NEEDS TO BE ADJUSTED, comment out the line below to run
--drop table historic;

--check to see if table was created
select * from historic;

-- copy in data from cleaned csv
-- FROM statement will need to be changed for each user
COPY historic(ID, LOCATION, BEDROOM_SIZE, AVG_2014, AVG_2015, AVG_2016, AVG_2017, AVG_2018, AVG_2019, AVG_2020) 
FROM '/Users/rent_avg_by_yr.csv' DELIMITER ',' CSV HEADER;