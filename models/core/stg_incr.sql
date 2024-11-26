with incr as (
    SELECT
        A,
        S,
        D
    FROM
        {{source('DBT_DBT_003_2', 'all_incr')}}
    {% if is_incremental() %}
    WHERE
        D > (SELECT MAX(D) FROM {{ this }})
    {% endif %}
)
SELECT * FROM incr