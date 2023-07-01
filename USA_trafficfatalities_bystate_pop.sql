
-- @@@@@@@@@@ cleaning and manipulating data on Traffic_deaths@@@@@@@@@@@@
-- displaying Traffic deaths table information
select * from Traffic_deaths

-- Adding new column name Total_crashes and calculating 
alter table Traffic_deaths
add column Total_crashes

select Total_crashes
from Traffic_deaths

alter table Traffic_deaths
drop column Total_crashes

select *
from Traffic_deaths

alter table Traffic_deaths
add column Total_traffic_fatalities as (MotorVehicleDeaths_stateofresidence + Trafficdeaths_stateofincident) 

ALTER table Traffic_deaths
drop column Total_traffic_fatalities

-- removing the commas from number
UPDATE Traffic_deaths
SET MotorVehicleDeaths_stateofresidence =replace(MotorVehicleDeaths_stateofresidence, ',','') 

UPDATE Traffic_deaths
set Trafficdeaths_stateofincident = replace(trafficdeaths_stateofincident,',','')

-- sum two columns into new column
ALTER TABLE Traffic_deaths ADD Total_Fatalities as (motorvehicledeaths_stateofresidence + trafficdeaths_stateofincident)
 

-- deleting the Trafficdeathsper10000motorvehicles COLUMN
alter table Traffic_deaths
drop column Trafficdeathsper10000motorvehicles
--checking for the column Trafficdeathsper10000motorvehicles
select *
from Traffic_deaths

--deleting the MotorVehicleDeathsper100000population COLUMN
alter table Traffic_deaths
drop column MotorVehicleDeathsper100000population
-- checking the COLUMN MotorVehicleDeathsper100000population
select *
from Traffic_deaths

-- deleting the COLUMN Trafficdeaths_per100000000vehiclemiles
alter table Traffic_deaths
drop column Trafficdeaths_per100000000vehiclemiles
-- checking for the column Trafficdeaths_per100000000vehiclemiles
select * 
from Traffic_deaths


-- @@@@@@@@@2cleaning and manipulating the data for table vehicletype_deaths_byGender@@@@@@@@@@@@@

delete from vehicletype_deaths_byGender
where Year is NULL 

alter table vehicletype_deaths_byGender
drop column Largetruckdrivers

alter TABLE vehicletype_deaths_byGender
drop column field7

alter table vehicletype_deaths_byGender
drop column Largetruckpassengers

alter table vehicletype_deaths_byGender
drop column field9

alter table vehicletype_deaths_byGender
drop column Pedestrians

alter table vehicletype_deaths_byGender
drop column field11

alter table vehicletype_deaths_byGender
drop column Bicyclists

alter table vehicletype_deaths_byGender
drop column field13

alter table vehicletype_deaths_byGender
drop column field15

alter table vehicletype_deaths_byGender
drop column Motorcyclists

alter table vehicletype_deaths_byGender
drop column "Totalmotorvehicledeaths*"

alter table vehicletype_deaths_byGender
drop column field17

select *
from vehicletype_deaths_byGender

alter table vehicletype_deaths_byGender
rename Passengervehicledrivers to MalePassengerVehicleD

alter table vehicletype_deaths_byGender
rename field3 to FemalePassengerVehicleD

alter table vehicletype_deaths_byGender
rename Passengervehiclepassengers to MalePassengerVehicleP

alter table vehicletype_deaths_byGender
rename field5 to FemalePassengerVehicleP

select * from vehicletype_deaths_byGender

-- Removing commas from the number
UPDATE vehicletype_deaths_byGender
set MalePassengerVehicleD = replace(MalePassengerVehicleD,',','')

UPDATE vehicletype_deaths_byGender
set FemalePassengerVehicleD = replace(FemalePassengerVehicleD,',','')

UPDATE vehicletype_deaths_byGender
set MalePassengerVehicleP = replace(MalePassengerVehicleP,',','')

UPDATE vehicletype_deaths_byGender
set FemalePassengerVehicleP = replace(FemalePassengerVehicleP,',','')


select *
from vehicletype_deaths_byGender

-- sum two columns into new column
ALTER TABLE vehicletype_deaths_byGender ADD Total_MaleFatalitiesByVehicletype as (MalePassengerVehicleD + MalePassengerVehicleP)
ALTER TABLE vehicletype_deaths_byGender ADD Total_FemaleFatalitiesByVehicletype as (FemalePassengerVehicleD + FemalePassengerVehicleP)

select * 
from vehicletype_deaths_byGender

alter table vehicletype_deaths_byGender
add column TotalVehicletypeFatalities

-- insert into vehicletype_deaths_byGender
-- (TotalVehicletypeFatalities) values(23714),(23551),(22697),(22215),(23824),(26325)

delete from vehicletype_deaths_byGender
where Year is NULL

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 23714 where Year = 2016

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 23551 where Year = 2017

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 22697 where Year = 2018

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 22215 where Year = 2019

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 23824 where Year = 2020

update vehicletype_deaths_byGender
set TotalVehicletypeFatalities = 26325 where Year = 2021


alter table vehicletype_deaths_byGender
add column MaleFatalitiesPercent

alter table vehicletype_deaths_byGender
add column FemaleFatalitiesPercent

alter table vehicletype_deaths_byGender
drop column MaleFatalitiesPercent


alter table vehicletype_deaths_byGender
drop column FemaleFatalitiesPercent




