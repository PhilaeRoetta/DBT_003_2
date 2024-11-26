{% snapshot mock_orders_ss %}

{{
    config (
        unique_key = 'ORDER_ID',
        strategy = 'timestamp',
        updated_at = 'updated_at'
    )

}}

SELECT * FROM {{source('DBT_DBT_003_2','all_mockorders')}}

{% endsnapshot %}