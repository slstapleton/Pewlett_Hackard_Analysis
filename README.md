# Pewlett-Hackard Retirement Analysis
## Overview of the analysis
### Purpose of this analysis.
Management of a large-scale business means that there is typically a large number of employees to manage as well. Tracking information such as age, salary, title, and dates of employment are essential in maintaining the staff numbers, and experience level consistent to ensure operations run smoothly. Analysis of this data can be very helpful in determining any potential staff number or qualification issues.  In this case, we were asked by Pewlett-Hackard to asses a concern of theirs pertaining to the number of employees about to reach retirement, or as they call it the “silver tsunami.” Through the analysis of their employee database, with will be able to tell them the number of employees who will soon be retiring, and whether they have qualified individuals to enter a mentorship.
## Results
-	In many cases of data analysis, there are multiple sets of data pertaining to different aspects of a related or unrelated subject. If there is a similar key between data sets, we are typically able to combine the data linking secondary information. Below is a set of six different files containing information about employees at Pewlett-Hackard. An entity relationship diagram shows the columns in each file so that we can have a quick glance at the connection we can make between primary keys in our coding. This conceptual diagram shows the similar columns through lines between the separate tables. If we would like to compare the salaries of people who work in different departments. The diagram below gives a quick visualization of the steps we need to take joining tables to create a new dataframe. The Departments table can be joined with to the Dept_Emp through the dept_no column. The Dept_Emp table can be joined with the Salaries table through the emp_no column. With these combinations we can display the dept_name, emp_no, and salary.

 ![EmployeeDB](https://user-images.githubusercontent.com/100329223/165000471-54c4c3c7-b8c0-4cc1-a203-28e19e33ce2f.png)

-	Through the following coding we were able to provide some answers to Pewlett-Hackard about the future flood of retirement. By joining two tables on a common column and filtering the ages of employees we are able to create a list of employees, employee numbers and their title. In this case, there are multiple employees who have changed their titles so they are listed twice on the table. This can throw off our numbers if we just did a count of this dataframe. Additionally, we will need to take into consideration which employees are actually still working in the company. After creating a new dataframe it is imperative that analysts review you output so there are no errors, unnecessary or sensitive information, or null values. We’ll need to do some additional formatting to provide a more accurate set of information.

![retiring_employees](https://user-images.githubusercontent.com/100329223/165000495-77eb4f0b-b144-4f63-b815-aa70031eb810.png)
 
-	The below set of coding does exactly what we had stated above. We added a line of coding that eliminate the duplicate names by only displaying the most recent title for each employee based on emp_no and to_date.  There was also a line of coding added that eliminates all employees who have a to_date other than ‘9999-01-01’(current employee).

![retiring_employees_recent_title](https://user-images.githubusercontent.com/100329223/165000710-6d0dfc0d-d3f0-47f3-870b-e9998c99dbd5.png)

 
-	In order to get a better idea of where replacements are going to be made, we can group the individuals by title. As you can see below, there will be 25,916 Senior Engineers who will need to be replaced after current employees have retired. With these numbers in mind, we can search through the provided tables to see if there are enough qualified employees to move up in position.

![retiring_employees_per_title](https://user-images.githubusercontent.com/100329223/165000715-9f34f15e-3ba6-43e2-a9a1-a25918db6eba.png)

 
-	To see who has the possibility of promotion within the company, we created a set or coding much similar to the one listed above. By joining tables, filtering current employees by their age and grouping them by title, we are able to determine who would be eligible to fill the positions that are opening due to the ‘silver tsunami.’
-	
 ![mentorship_employees_per_title](https://user-images.githubusercontent.com/100329223/165000761-4fdb0397-b614-43dd-abed-58fe1220f114.png)

## Summary
o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?
When we crunched the numbers, it appears there will be a pretty significant amount of people retiring and in order to keep productivity and quality, they will need to hire a lot of additional employees. We already calculated the number of employees that will be retiring. The two groups that will be impacted the most are senior engineers and senior staff. Below is a set of coding that found the number of employees who will be retiring per position in each department. With this information, management will know where to focus their needs in the department with the most deficit. 

![retire_title_dept](https://user-images.githubusercontent.com/100329223/165000794-7084a3d2-1237-4ded-b2f4-6c947f251a70.png)

o	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
The number of employees who will now be considered senior in their positions is far fewer than that of the number of retirees. For example, with over 25,000 employees that are retiring being Senior Engineers, there are only 405 employees to replace them as the most experienced in that title and train the future generation of Senior Engineers. With those numbers, each mentor would have to train ~60 individuals. With these numbers, Pewlett-Hackard may want to consider recruiting individuals who are experienced in their field to alleviate the workload while others are mentoring. Below is a more specific set of coding that breaks down the potential mentorship numbers by positions into departments so that the company has a better idea of which positions will need the most assistance with training.

![mentor_title_dept](https://user-images.githubusercontent.com/100329223/165000810-17a91396-5a26-45a1-b51a-46beca1566e4.png)

