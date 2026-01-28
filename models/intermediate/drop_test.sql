--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "number_of_students_active"
FROM {{ ref('students_admin_assets') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1