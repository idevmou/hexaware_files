drop table [dbo].[covid_data_3]

SELECT continentExp AS continents,
countriesAndTerritories AS countries,
CAST(year AS VARCHAR(255)) + '-' + CAST(month AS VARCHAR(255)) AS Year_Month, 
sum(CAST(cases AS INT)) AS cases,
sum(CAST(deaths AS INT)) AS Deaths
FROM [dbo].[covid19_data_load] 
WHERE year='2020'
GROUP BY continentExp, countriesAndTerritories, CAST(year AS VARCHAR(255)) +'-' + CAST(month AS VARCHAR(255));

SELECT continentExp AS continents,
       countriesAndTerritories AS countries,
       CAST(year AS VARCHAR(255)) + '-' + CAST(month AS VARCHAR(255)) AS Year_Month, 
       SUM(CAST(cases AS INT)) AS cases,
       SUM(CAST(deaths AS INT)) AS deaths
INTO [dbo].[covid_data_3]
FROM [dbo].[covid19_data_load] 
WHERE year = '2020'
GROUP BY continentExp, countriesAndTerritories, CAST(year AS VARCHAR(255)) + '-' + CAST(month AS VARCHAR(255));













