--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT   *,
COALESCE("Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_", 0) +
COALESCE("Admin_Assets_Cost", 0) +
COALESCE("IT_Assets_Cost", 0) AS total_cost
 FROM {{ref('j2l_per_Stundet_cost')}})
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1