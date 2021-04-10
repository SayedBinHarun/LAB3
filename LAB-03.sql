

 Activity 01 -

           SELECT last_name, hire_date
           FROM emps 
           WHERE hire_date LIKE '%94'


 Activity 02 -

           SELECT last_name, salary, commission_pct 
           FROM emps 
           WHERE commission_pct IS NOT NULL ORDER BY salary DESC, commission_pct DESC


 Activity 03-

           SELECT Last_Name 
           FROM emps 
           WHERE Last_Name LIKE '%a%' AND Last_Name LIKE '%e%



 Activity 04 -

           SELECT e.last_name, e.department_id, d.department_name
           FROM emps e, depts d 
           WHERE e.department_id = d.department_id




 Activity 05 - 

           SELECT e.last_name, d.department_name, d.location_id, l.city
           FROM emps e, depts d, locs l 
           WHERE e.department_id = d.department_id AND d.location_id = l.location_id AND e.commission_pct IS NOT NULL 

 


 Activity 06 -
  
           SELECT e.last_name, e.job_id, e.department_id, d.department_name 
           FROM emps e JOIN depts d 
           ON (e.department_id = d.department_id) JOIN locs l ON (d.location_id = l.location_id) WHERE LOWER(l.city) = 'toronto' 

 


 Activity 07 -
 
           SELECT last_name, salary, commission_pct 
           FROM emps 
           WHERE commission_pct IS NOT NULL ORDER BY salary DESC, commission_pct DESC



 Activity 08 -

            SELECT w.last_name "Employee", w.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#" 
            FROM emps w join emps m ON (w.manager_id = m.employee_id)

 

 Activity 09 -

            SELECT ROUND(MAX(salary)) "Maximum", ROUND(MIN(salary)) "Minimum", ROUND(SUM(salary)) "Sum", ROUND(AVG(salary)) "Average"
            FROM emps



 Activity 10 -

            SELECT job_id, ROUND(MAX(salary)) "Maximum", ROUND(MIN(salary)) "Minimum", ROUND(SUM(salary)) "Sum", ROUND(AVG(salary)) "Average"
            FROM emps GROUP BY job_id



 Activity 11 -

            SELECT job_id, COUNT(*) 
            FROM emps GROUP BY job_id



 Activity 12 -

            SELECT manager_id, MIN(salary)
            FROM emps WHERE manager_id IS NOT NULL GROUP BY manager_id ORDER BY MIN(salary) DESC




 Activity Home Work -

            SELECT d.department_name"NAME",d.location_id "LOCATIONS", count(*)"NUMBER OF PEOPLE" ,round(avg(e.salary),2) "SALARY" 
            from depts d, emps e 
            where e.department_id=d.department_id group by d.department_name,d.location_id
     





























