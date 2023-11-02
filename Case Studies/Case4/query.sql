CREATE TABLE covid19_data_load(
	dateRep varchar(1200),
	day INT,
	month INT,
	year INT,
	cases INT,
	deaths INT,
	countriesAndTerritories VARCHAR(1000)	,
	geoId	VARCHAR(1000),
	countryterritoryCode VARCHAR(1000),
	popData2019 INT,
	continentExp VARCHAR(1000),
	[Cumulative_number_for_14_days_of_COVID-19_cases_per_100000] INT
);
ALTER TABLE [dbo].[covid19_data_load]
ALTER COLUMN [Cumulative_number_for_14_days_of_COVID-19_cases_per_100000] VARCHAR(100);


DROP TABLE [dbo].[covid19_data];

CREATE TABLE covid_data_3 (
	continentExp VARCHAR(1000),
	countriesAndTerritories VARCHAR(1000)	,
	year INT,
	month INT,
	cases INT,
	deaths INT,
)
