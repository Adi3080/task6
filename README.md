# task6
This task demonstrates the use of subqueries and nested queries in PostgreSQL using pgAdmin.
The first query uses a scalar subquery within the SELECT clause to display each student's marks along with the highest marks in the entire table. 
The second query utilizes a subquery with IN, GROUP BY, and HAVING to identify students from departments that have more than one student. 
The third query applies a correlated subquery with EXISTS to return students from departments where at least one student has scored above 85. 
The final query makes use of a correlated subquery with an aggregate function to find students who have scored more than the average marks of their respective 
departments
All queries were executed successfully in pgAdmin using PostgreSQL, showcasing common and important subquery patterns used in SQL.
