# Pewlett-Hackard_Analysis
## Overview of Analysis 
The purpose of this project was to use PostgresSQL and pgAdmin to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program at Pewlett-Hackard. This will help prepare them for the "silver tsunami" as a lot of the employees are nearing retirement age. 

## Results 
- In the first table made, retirement_tables, the DISTINCT ON statement was used in SQL to help determine the most recent title of each employee, since there have been promotions over the years. 
- After that table was made, another one was created to determine only employees who still worked for the company and were going to retire. 
- For the second table, they wanted to figure out which employees were eligible for the Mentorship Program. 
- In this table we used the DISTINCT ON statement again to retrieve the first occurence of the employee number for each set of rows. Below is the results, showing which employees are eligible. 

![D2table](https://user-images.githubusercontent.com/97268254/163689199-57f7982f-8478-47c9-b02b-a2e2d65f80fa.PNG)

## Summary
As one could guess from its name, the "silver tsunami" is going to have a large impact on the company. There are a total of 41,382 jobs that will need to be filled.

According to my queries, there are not nearly enough qualified, retirement-ready employees in the departments to mentor the next generation of employees.
