-- READ FOR LOADING CSV
-- 1. INITIALIZE POSTGRES SERVER
-- 2. LOAD PG ADMIN
-- 3. CREATE DATABASE TITLED : "rent_predict"
-- 4. RUN THE FOLLOWING IN QUERY TOOL--

-- create table using the following
-- NOTE: Spaces needed to be removed from column names in order for postgres to read them in, does not affect output. 
CREATE TABLE housing_values_popchange (
ID INT PRIMARY KEY,
State TEXT,
prediction_2020 INT,
prediction_2021 INT,
prediction_2022 INT,
prediction_2023 INT,
r_squared DECIMAL
);

-- run the following the check table headers
select * from housing_values_popchange;

-- run the following to copy in the data on the CSV Carl edited to make predictions
-- NOTE: spaces needed to be removed from this section as well, it does not affect data in the csv or the loadability of the file 
COPY housing_values_popchange(
ID, 
State, 
prediction_2020,
prediction_2021,
prediction_2022,
prediction_2023,
r_squared
) 

-- NOTE: remember to change the file path for each user otherwise the file will not load.

FROM '/Users/MLR_HousingValues_PopChange_output.csv' DELIMITER ',' CSV HEADER;