USE Hexaware;

-- Step 1: Add a new column with the desired name
ALTER TABLE [dbo].[data_20230330]
ADD Cumulative_number_for_14_days_of_COVID_19_cases_per_100000 VARCHAR(100);

-- Step 2: Update the new column with the data from the old column
UPDATE [dbo].[data_20230330]
SET Cumulative_number_for_14_days_of_COVID_19_cases_per_100000 = [Cumulative_number_for_14_days_of_COVID-19_cases_per_100000];

-- Step 3: Drop the old column
ALTER TABLE [dbo].[data_20230330]
DROP COLUMN [Cumulative_number_for_14_days_of_COVID-19_cases_per_100000];


SELECT * FROM [dbo].[data_20230330];
