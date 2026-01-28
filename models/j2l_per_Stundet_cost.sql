{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT
CAST("_airbyte_meta" AS jsonb) AS "_airbyte_meta",
CAST("_airbyte_raw_id" AS character varying) AS "_airbyte_raw_id",
CAST("AD" AS character varying) AS "AD",
CAST("Admin_Assets_Cost" AS numeric) AS "Admin_Assets_Cost",
CAST("AM" AS character varying) AS "AM",
CAST("Average_Cost" AS text) AS "Average_Cost",
CAST("Cost_per_Centre" AS text) AS "Cost_per_Centre",
CAST("Cost_per_Student" AS numeric) AS "Cost_per_Student",
CAST("LTC_Name" AS character varying) AS "LTC_Name",
CAST("Month" AS date) AS "Month",
CAST("Number_of_Students_active" AS numeric) AS "Number_of_Students_active",
CAST("OM" AS character varying) AS "OM",
CAST("Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_" AS numeric) AS "Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_",
CAST("Zone" AS character varying) AS "Zone",
CAST("IT_Assets_Cost" AS numeric) AS "IT_Assets_Cost"
FROM {{ref('j2l_pne_cast1')}}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT
  *,
  TO_CHAR("Month", 'mon') AS "Month_Name",
  CAST(EXTRACT(YEAR FROM "Month") AS integer) AS "Year"
FROM cte1