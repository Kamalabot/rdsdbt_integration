{% test is_manchuria(model, column_name) %}

with validation as (

    select
        {{ column_name }} as manchu_row 

    from {{ model }}

),

validation_errors as (

    select
        manchu_row 

    from validation

    where manchu_row not in ('Manchuria','Glabron')

)

select count(*)
from validation_errors

{% endtest %}
