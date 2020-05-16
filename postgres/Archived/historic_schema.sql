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

---------------------
CREATE TABLE home_sale_historic (
ID INT PRIMARY KEY,
Unnamed TEXT,
Alaska INT, 
Alabama INT,
Arkansas INT,
Arizona INT,
California INT,
Colorado INT,
Connecticut INT,
DistrictofColumbia INT,
Delaware INT,
Florida INT,
Georgia	INT,
Hawaii INT,	
Iowa INT,	
Idaho INT,
Illinois INT,
Indiana INT,	
Kansas INT,	
Kentucky INT,	
Louisiana INT,
Massachusetts INT,	
Maryland INT,	
Maine INT,
Michigan INT,
Minnesota INT,	
Missouri INT,	
Mississippi INT,
NorthCarolina INT,
Nebraska INT,
NewHampshire INT,	
NewJersey INT,	
Nevada INT,	
NewYork INT,	
Ohio INT,	
Oklahoma INT,	
Oregon INT,	
Pennsylvania INT,	
RhodeIsland INT,	
SouthCarolina INT,	
SouthDakota INT,	
Tennessee INT,	
Texas INT,
Utah INT,	
Virginia INT,
Vermont INT,	
Washington INT,	
Wisconsin INT,
WestVirginia INT,
year INT,  
month INT,
date INT
);

select * from home_sale_historic;

COPY home_sale_historic(
ID, 
Unnamed, 
Alaska,
Alabama,
Arkansas,
Arizona,
California,
Colorado,
Connecticut,
DistrictofColumbia,
Delaware,
Florida,
Georgia,
Hawaii,
Iowa,
Idaho,
Illinois,
Indiana,
Kansas,
Kentucky,
Louisiana,
Massachusetts,
Maryland,
Maine,
Michigan,
Minnesota,
Missouri,
Mississippi,
NorthCarolina,
Nebraska,
NewHampshire,
NewJersey,
Nevada,
NewYork,
Ohio,
Oklahoma,
Oregon,
Pennsylvania,
RhodeIsland,
SouthCarolina,
SouthDakota,
Tennessee,
Texas,
Utah,
Virginia,
Vermont,
Washington,
Wisconsin,
WestVirginia,
year,
month,
date
) 

FROM '/Users/CLEANED_National_SFHS_CR_edits.csv' DELIMITER ',' CSV HEADER;