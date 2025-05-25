 {% macro deptsalary() %} 
  
  SELECT 
    d.department_name, 
    SUM(e.salary) AS salary
  FROM 
    DBT_PPANDA.employee e 
    INNER JOIN DBT_PPANDA.department d 
    ON e.department_id = d.department_id
  GROUP BY 
    d.department_name

{% endmacro %}    