set search_path to nairobi_academy;

select * from students s;
select * from subjects s;
select * from exam_results er;

-- PART 2
-- NUMBER FUNCTIONS

-- Q1. Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.


select results_id, marks, round(marks,1), ceil(marks/10.0)*10, floor(marks/10.0)*10
from exam_results; 

select results_id, round(marks, 1), ceil(marks), floor(marks)
from exam_results;

select results_id, marks, round(cast(marks as decimal),1), ceil(marks/10.0)*10, floor(marks/10.0)*10
from exam_results; 



-- Q2. Write a query to calculate the following summary statistics for exam_results in one query:
-- total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).

select count(results_id) as number_of_results, round(AVG(marks), 2) as average_marks, max(marks) as highest_mark, min(marks) as lowest_mark, SUM(marks) as total_marks
from exam_results; 

-- Q3. The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number.

select results_id, marks, round(((1+0.1)*marks),0) as new_boosted_mark
from exam_results; 

select results_id, marks, ceil(1.1*marks) as new_boosted_mark
from exam_results; 





