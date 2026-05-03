set search_path to nairobi_academy;

select * from students s;
select * from subjects s;
select * from exam_results;

-- PART 1 
-- STRING FUNCTIONS

-- Q1. Write a query to display each student's full name in UPPERCASE and their city in lowercase.Name the columns upper_name and lower_city.

select UPPER(concat(first_name,' ',last_name)) as full_name, LOWER(city)
from students;

select upper(first_name ||' '|| last_name) as full_name, LOWER(city)
from students;

-- Q2. Write a query to show each student's first name and the LENGTH of their first name. Order the results from longest to shortest name.

select first_name, length(first_name) as name_length
from students
order by name_length desc;

--Q3. Write a query to show each subject's name and a short version - the first 4 characters of the subject name ... called short_name. Also show the full subject name length.

select subject_name, left(subject_name, 4) as short_name, length(subject_name)
from subjects;

-- to compare between left and right functions

select subject_name, right(subject_name, 5) as short_name, length(subject_name)
from subjects;

-- Q4.Write a query using CONCAT to produce a sentence for each student in this format: 'Amina Wanjiku is in Form 3 and comes from Nairobi'. Call the column student_summary.

select concat(first_name,' ', last_name,' ','is in',' ', class,' ','and comes from',' ', city) as student_summary
from students;

