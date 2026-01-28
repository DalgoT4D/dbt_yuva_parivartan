-- Model: students_admin_assets.sql
-- Shows only number of students and admin assets cost (cast to INT)
{{ config(materialized='table', schema='intermediate') }}

SELECT
    CAST("Number_of_Students_active" AS INT) AS number_of_students_active,
    CAST("Admin_Assets_Cost" AS INT) AS admin_assets_cost

FROM {{ source('staging_raw', 'J2L__PnE__SPINE_HR_FINANCE') }}

-- Optional: add a WHERE clause to filter out rows where both values are null
-- WHERE "Number_of_Students_active" IS NOT NULL OR "Admin_Assets_Cost" IS NOT NULL
