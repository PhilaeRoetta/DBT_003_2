with orders as (
    SELECT
        O_ORDERKEY,
        O_TOTALPRICE,
        O_CUSTKEY
    FROM {{ source('DBT_DBT_003_2', 'all_orders') }}
)
SELECT * FROM orders