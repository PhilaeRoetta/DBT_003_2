{% test gen_amount_positive(model,column_name) %}

SELECT * FROM {{model}} WHERE {{column_name}} < 0

{% endtest %}