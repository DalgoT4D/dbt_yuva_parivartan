{{ config(materialized='table', schema='intermediate') }}

SELECT
    CAST("Admin_Assets_Cost" AS INT) AS admin_assets_cost,
    CAST("Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_" AS INT) AS other_costs,
    CAST("Number_of_Students_active" AS INT) AS active_students,

    CASE 
        WHEN CAST("Number_of_Students_active" AS INT) > 0
        THEN 
            (CAST("Admin_Assets_Cost" AS INT) 
            + CAST("Other_Costs__Like_Rent_Salaries_of_LTCA___Mobilisers_" AS INT))
            / CAST("Number_of_Students_active" AS INT)
        ELSE 0
    END AS cost_per_student

FROM {{ source('staging_raw', 'J2L__PnE__SPINE_HR_FINANCE') }}