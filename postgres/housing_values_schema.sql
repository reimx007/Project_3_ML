-- READ FOR LOADING CSV
-- 1. INITIALIZE POSTGRES SERVER
-- 2. LOAD PG ADMIN
-- 3. CREATE DATABASE TITLED : "rent_predict"
-- 4. RUN THE FOLLOWING IN QUERY TOOL--

-- create table using the following
-- NOTE: Spaces needed to be removed from column names in order for postgres to read them in, does not affect output. 
CREATE TABLE housing_values (
ID INT PRIMARY KEY,
State TEXT,
prediction_2021_03 INT,
score_2021_03 DECIMAL,	
prediction_2022_03 INT,
score_2022_03 DECIMAL,
prediction_2023_03 INT,
score_2023_03 DECIMAL
);

-- run the following the check table headers
select * from housing_values;

-- run the following to copy in the data on the CSV Carl edited to make predictions
-- NOTE: spaces needed to be removed from this section as well, it does not affect data in the csv or the loadability of the file 
COPY housing_values(
ID, 
State, 
prediction_2021_03,
score_2021_03,
prediction_2022_03,
score_2022_03,
prediction_2023_03,
score_2023_03
) 

-- NOTE: remember to change the file path for each user otherwise the file will not load.

FROM '/Users/LR_HousingValues_output.csv' DELIMITER ',' CSV HEADER;