--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT
"_airbyte_extracted_at",
"_airbyte_meta",
"_airbyte_raw_id",
"AD",
"Admin_Assets_Cost",
"AM",
"Average_Cost",
"Cost_per_Centre",
"Cost_per_Student",
"LTC_Name",
"Month",
"Number_of_Students_active",
"OM",
"Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_",
"Zone",
REPLACE("IT_Assets_Cost", ',', '') AS "IT_Assets_Cost"
FROM {{source('staging_raw', 'J2L__PnE__SPINE_HR_FINANCE')}}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1