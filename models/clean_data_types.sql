--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT *, cast("Total_Target_Enrolments" as integer) as total_target_enroll, cast("Total_Achieve_till_25th_Nov" as integer) as achieved_till_25th_Nov  FROM {{ref('test_cleanup')}})
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1