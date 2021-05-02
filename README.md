# Pewlett-Hackard-Analysis

## Overview

The purpose of this analysis was to build on our import of employee data, and leverage our enterprise relationhsip diagram to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. In the process of doing so, four new tables were created; retirement_titles, unqiue_titles, retiring_titles, and unique_mentor. The first three tables were used to understand the employees retiring based on title. The unique_mentor table allowed us to identify what employees are eligible for the firm's mentorship program.

## Results of our Analysis

There is a total of 72,458 eligible to retire from the firm. The firm should be mindful about developing a robust employee development pipeline to ensure those roles can be filled affectively. The newly developed mentorship program based on our analysis should assist on this front. Below is a summary of findings of our analysis overall:

  1) Approximately 70% of the retirement-eligible employees are either categorized as Senior Staff or Senior Engineers.
  2) Of all the retirement-eligible employees, only 2 are managers
  3) There are a total of 1,549 employees eligible for mentorship
  4) Of the employees eligible for the mentor program, 833 of the employees have had more than one role at the firm.

## Breakdown of Retirement-Eligible Employees

<img width="240" alt="Screen Shot 2021-05-02 at 10 28 51 AM" src="https://user-images.githubusercontent.com/80016496/116818490-3a9c4880-ab31-11eb-984e-d255dfafdccd.png">

## Summary

There are a total of 72,458 employees eligible for retirement, and 1,549 eligible for mentorship. For further analysis, we could complete a query to check if we have a matching distribution of retiring title types, with our mentor pool. This query would show us were the firm may need to bolster mentor support to ensure knowledge transfer. We could also query/join our salaries table with our retiring_titles table to provide management a summary of cost savings as a result of more senior salaries rolling off the companies payroll.
