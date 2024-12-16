```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This corrected query uses the `OR salary IS NULL` condition to explicitly include employees with `NULL` salaries in the result set.  Alternatively, using a `CASE` statement or `COALESCE` function could provide more nuanced handling based on the interpretation of `NULL` salaries.