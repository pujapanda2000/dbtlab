{% macro employee(salary, dept_id=3) %}

where salary<{{salary}}
and department_id={{dept_id}}

{% endmacro %}