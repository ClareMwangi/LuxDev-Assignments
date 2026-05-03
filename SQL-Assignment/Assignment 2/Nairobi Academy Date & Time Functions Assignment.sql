set search_path to nairobi_academy;

select * from students s;
select * from subjects s;
select * from exam_results er;

-- PART 3
-- DATE & TIME FUNCTIONS

-- Q1. Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.
--::text-- this is casting --converts numbers to texts

select first_name, extract(year from date_of_birth)::text as year, 
extract (month from date_of_birth) as month,
extract (day from date_of_birth) as day
from students;


-- Q2. Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.

select concat(first_name,' ',last_name) as full_name, date_of_birth, extract(year from (age(current_date,date_of_birth))) as current_age
from students
order by current_age desc;

-- Q3. write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. Call the column formatted_date.
-- TO_CHAR (To character) a function that formats dates and time values to text 

select exam_date, 
TO_CHAR(exam_date,'DAY, DDth Month YYYY') as formatted_date
from exam_results;

