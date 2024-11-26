{#this is a test of jinja code#}
{% macro testjinja (nb)%}
    {% for i in range(0,nb+1) %}
        SELECT {{i}} AS A
        {% if i < nb %}
            UNION
        {% endif %}
    {% endfor%}
    ORDER BY A DESC
{% endmacro %}