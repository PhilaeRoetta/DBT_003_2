{{ dbt_utils.deduplicate(
    relation=source('DBT_DBT_003_2', 'all_customers'),
    partition_by='C_NAME',
    order_by="C_NAME,C_ADDRESS"
   )
}}