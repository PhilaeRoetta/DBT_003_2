with customers as (
    SELECT
    C_CUSTKEY,
    C_NAME
    FROM {{ source('DBT_DBT_003_2', 'all_customers') }}
)

SELECT * FROM customers