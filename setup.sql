CREATE TABLE IF NOT EXISTS noc_regions (
    NOC VARCHAR(3) PRIMARY KEY,
    region VARCHAR(200),
    notes VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS athlete_events (
    ID INT,
    Name VARCHAR(200),
    Sex VARCHAR(2),
    Age INT,
    Height NUMERIC(10),
    Weight NUMERIC(10),
    Team VARCHAR(200),
    NOC VARCHAR(3) REFERENCES noc_regions (NOC),
    Games VARCHAR(200),
    Year SMALLINT,
    Season VARCHAR(200),
    City VARCHAR(200),
    Sport VARCHAR(200),
    Event VARCHAR(500),
    Medal VARCHAR(200) 
);