--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT *, (achieved_till_25th_nov * 0.75) as compute_achieved_till_25th_nov  FROM {{ref('clean_data_types')}})
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1