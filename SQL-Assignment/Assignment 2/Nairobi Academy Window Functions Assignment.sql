set search_path = nairobi_academy;

select * from students s;
select * from subjects s;
select * from exam_results;

-- PART 6 
-- WINDOW FUNCTIONS


-- Q1. Write a query using ROW_NUMBER() to assign a unique rank to each exam result, ordered from highest mark to lowest. Show result_id, student_id, marks, and row_num.

select result_id, student_id, marks , row_number() over(order by marks desc) as row_num
from exam_results;

-- Q2. Write a query using RANK() and DENSE_RANK() on exam results ordered by marks descending. Show both columns side by side so the difference between them is visible.

select result_id, marks, rank()over(order by marks desc) as rank_marks,
dense_rank()over(order by marks desc) as dense_rank_marks
from exam_results;

--Q3. Write a query using NTILE(3) to divide all exam results into 3 performance bands (1 = top, 2 = middle, 3 = bottom). Show result_id, marks, and band.

select result_id, marks, ntile(3) over (order by marks desc) as band,
case
    when ntile(3) over (order by marks desc) = 1 then 'top'
    when ntile(3) over (order by marks desc) = 2 then 'middle'
    else 'bottom'
end as band_category
from exam_results;

--Q4. Write a query using AVG() OVER(PARTITION BY student_id) to show each exam result alongside that student's personal average mark. Show student_id, marks, and student_avg rounded to 2 decimal places.

select student_id, marks, round(avg(marks) over(partition by student_id),2) as student_avg_mark
from exam_results;

--or

sELECT er.student_id, AVG(er.marks) OVER (PARTITION BY er.student_id) AS avg_marks
FROM exam_results er
JOIN students s
ON er.student_id = s.student_id
ORDER BY avg_marks DESC;




--Q5. Write a query using LAG() to show each exam result alongside the previous result's marks for the same student. Also calculate the improvement (current marks minus previous marks). Use PARTITION BY student_id.

select student_id, exam_date, marks,
lag(marks) over (partition by student_id order by exam_date) as previous_marks,
marks - lag(marks) over (partition by student_id order by exam_date) as improvement
from exam_results;
