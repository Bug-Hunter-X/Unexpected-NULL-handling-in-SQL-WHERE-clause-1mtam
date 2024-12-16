```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem straightforward, but it can lead to unexpected behavior if the `salary` column allows `NULL` values.  The condition `salary > 100000` will treat `NULL` as neither greater than nor less than 100000, effectively excluding employees with `NULL` salaries from the results, even if they are in the 'Sales' department.  This is a subtle but significant issue if `NULL` in salary represents something meaningful (e.g., unpaid interns or employees without set salaries).