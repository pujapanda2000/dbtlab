SELECT 
  A.department_name, 
  A.salary, 
  DENSE_RANK() OVER (ORDER BY A.salary DESC) AS rank_
FROM(
{{deptsalary()}}

)AS A
QUALIFY rank_ < 3