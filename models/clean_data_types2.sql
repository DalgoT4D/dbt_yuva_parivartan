--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT
CAST("_" AS character varying) AS "_",
CAST("AD" AS character varying) AS "AD",
CAST("AM" AS character varying) AS "AM",
CAST("Dec" AS character varying) AS "Dec",
CAST("Nov" AS character varying) AS "Nov",
CAST("Oct_" AS character varying) AS "Oct_",
CAST("Total" AS character varying) AS "Total",
CAST("OM_SAM" AS character varying) AS "OM_SAM",
CAST("Balance" AS character varying) AS "Balance",
CAST("Jotform" AS character varying) AS "Jotform",
CAST("LDC_Name" AS character varying) AS "LDC_Name",
CAST("Donor_Name" AS character varying) AS "Donor_Name",
CAST("Row_Labels" AS character varying) AS "Row_Labels",
CAST("Course_Name" AS character varying) AS "Course_Name",
CAST("Balance_Exam" AS character varying) AS "Balance_Exam",
CAST("Livelihood_Ach" AS integer) AS "Livelihood_Ach",
CAST("ENC_Achivement" AS character varying) AS "ENC_Achivement",
CAST("Project_End_date" AS character varying) AS "Project_End_date",
CAST("Livelihood_Target" AS integer) AS "Livelihood_Target",
CAST("Balance_Livelihood" AS character varying) AS "Balance_Livelihood",
CAST("Livelihood_Achived" AS character varying) AS "Livelihood_Achived",
CAST("Project_Start_date" AS character varying) AS "Project_Start_date",
CAST("_Livelihood_Target_" AS character varying) AS "_Livelihood_Target_",
CAST("Balance_as_of_Dec_25" AS character varying) AS "Balance_as_of_Dec_25",
CAST("Expected_Apr_to_Dec_25" AS character varying) AS "Expected_Apr_to_Dec_25",
CAST("Total_Target_Enrolments" AS character varying) AS "Total_Target_Enrolments",
CAST("Balance_Number_till_Nov_25" AS character varying) AS "Balance_Number_till_Nov_25",
CAST("3RD_party_enrollment_Remark" AS character varying) AS "3RD_party_enrollment_Remark",
CAST("Exam___certification_status" AS character varying) AS "Exam___certification_status",
CAST("Total_Achieve_till_25th_Nov" AS character varying) AS "Total_Achieve_till_25th_Nov",
CAST("Cummulative_TGT__April_to_Nov" AS character varying) AS "Cummulative_TGT__April_to_Nov",
CAST("_airbyte_raw_id" AS character varying) AS "_airbyte_raw_id",
CAST("_airbyte_extracted_at" AS timestamp with time zone) AS "_airbyte_extracted_at",
CAST("_airbyte_meta" AS jsonb) AS "_airbyte_meta",
CAST("total_target_enroll" AS integer) AS "total_target_enroll",
CAST("achieved_till_25th_nov" AS integer) AS "achieved_till_25th_nov",
CAST("compute_achieved_till_25th_nov" AS numeric) AS "compute_achieved_till_25th_nov"
FROM {{ref('compute_achieved')}}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1