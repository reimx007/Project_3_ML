-- READ FOR LOADING CSV
-- 1. INITIALIZE POSTGRES SERVER
-- 2. LOAD PG ADMIN
-- 3. CREATE DATABASE TITLED : "rent_predict"
-- 4. RUN THE FOLLOWING IN QUERY TOOL--

-- create table using the following
-- NOTE: Spaces needed to be removed from state names as well as appending the "Unnamed" column. Data is still loadable with edits. 
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

-- run the following the check table headers
select * from home_sale_historic;

-- run the following to copy in the data on the CSV Carl edited to make predictions
-- NOTE: spaces needed to be removed from this section as well, it does not affect data in the csv or the loadability of the file 
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

-- NOTE: remember to change the file path for each user otherwise the file will not load.

FROM '/Users/CLEANED_National_SFHS_CR_edits.csv' DELIMITER ',' CSV HEADER;