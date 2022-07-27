# Pewlett-Hackard-Analysis

## Overview of Analysis
Pewlett Hackard is a large business that is offering a retirement package for those employees who meet certain criteria, and wants to start planning how to fill future vacancies.

### Purpose
The client would like to know the current number of retirement-age employees by their most recent job title, and be provided a list of current employees born in 1965 who are eligible to participate in a mentorship program to train future employees.

## Results

![Retiring by Title](https://github.com/mschimmy/Pewlett-Hackard-Analysis/blob/main/Images/retiring_by_title.png)

- The Retiring by Title table above shows the current number of retirement-age employees: 72,458.
- The title with the largest amount of future vacancies is Senior Engineer, followed closely by Senior Staff.
- The title with the least amount of future vacancies is Manager, with only two positions needing to be filled.
- The mentorship_eligibility.csv file shows that there are a total of 1,549 current employees eligible for the mentorship program, and provides information on the individual employees.

## Summary
1. How many roles will need to be filled as the “silver tsunami” begins to make an impact?
	A total of 72,458 positions will need to be filled in the upcoming years. The unique_titles.csv file provides further detail on individual employees that are eligible for retirement. The Retiring by Title table above breaks down the number of future vacancies by title. The Retiring by Department  table below gives the number of future vacancies by department. The department with the most vacancies needing to be filled is Development, while the Finance department will have the least amount of future vacancies. 
![Retiring by Department](https://github.com/mschimmy/Pewlett-Hackard-Analysis/blob/main/Images/retiring_by_dept.png)

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
	There are a total of 1,549 qualified, retirement-ready employees that are eligible for the mentorship program, 2.14% of the total number of employees ready for retirement (aka the total number of future vacancies). The Mentors by Title table below gives the number of mentorship-eligible employees by title. When compared to the Retiring by Title table, the most immediate concern is that there are no employees eligible to train the Manager title, this should be investigated by the client. Generally, the number of mentorship-eligible employees would be insufficient to successfully mentor the next generation of Pewlett Hackard employees, as each mentor would have to personally train close to 47 new hires (this is an overall ratio and is not broken down by titles or department). It is suggested that the client expand their mentorship eligibility requirements, or look for solutions outside their organization to develop and optimize their staff development and training programs.
![Mentors by Title](https://github.com/mschimmy/Pewlett-Hackard-Analysis/blob/main/Images/mentors_by_title.png)
