--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte2 as (
SELECT
"_",
"AD",
"AM",
"Dec",
"Nov",
"Oct_",
"State",
"Total",
"OM_SAM",
"Balance",
"Jotform",
"LDC_Name",
"Donor_Name",
"Row_Labels",
"Course_Name",
"Balance_Exam",
"Livelihood_Ach",
"ENC_Achivement",
"Project_End_date",
"Livelihood_Target",
"Balance_Livelihood",
"Livelihood_Achived",
"Project_Start_date",
"_Livelihood_Target_",
"Balance_as_of_Dec_25",
"Expected_Apr_to_Dec_25",
"Total_Target_Enrolments",
"Balance_Number_till_Nov_25",
"3RD_party_enrollment_Remark",
"Exam___certification_status",
"Total_Achieve_till_25th_Nov",
"Cummulative_TGT__April_to_Nov",
"_airbyte_raw_id",
"_airbyte_extracted_at",
"_airbyte_meta"
FROM {{source('staging_raw', '_Main_Table')}}
WHERE ("Course_Name" != ' ' )) , cte1 as (
SELECT "_", "AD", "AM", "Dec", "Nov", "Oct_", "Total", "OM_SAM", "Balance", "Jotform", "LDC_Name", "Donor_Name", "Row_Labels", "Course_Name", "Balance_Exam", "Livelihood_Ach", "ENC_Achivement", "Project_End_date", "Livelihood_Target", "Balance_Livelihood", "Livelihood_Achived", "Project_Start_date", "_Livelihood_Target_", "Balance_as_of_Dec_25", "Expected_Apr_to_Dec_25", "Total_Target_Enrolments", "Balance_Number_till_Nov_25", "3RD_party_enrollment_Remark", "Exam___certification_status", "Total_Achieve_till_25th_Nov", "Cummulative_TGT__April_to_Nov", "_airbyte_raw_id", "_airbyte_extracted_at", "_airbyte_meta"
FROM cte2
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1