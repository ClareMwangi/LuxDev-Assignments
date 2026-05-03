-- SECTION A

-- Create a schema called nairobi_academy and make sure SQL is using it before you do anything else.

create schema if not exists nairobi_academy;

set search_path to nairobi_academy;


-- Create the students table with the following columns:

create table students(
student_id INT primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
gender VARCHAR(1),
date_of_birth date,
class VARCHAR(10),
city VARCHAR(50)
);

-- Insert all 10 students into the students table

insert into students(student_id, first_name, last_name, gender, date_of_bith, class, city)
values
	(1,'Amina','Wanjiku','F','2008-03-12','Form 3','Nairobi'),
	(2,'Brian','Ochieng','M','2007-07-25','Form 4','Mombasa'),
	(3,'Cynthia','Mutua','F','2008-11-05','Form 3','Kisumu'),
	(4,'David','Kamau','F','2007-02-18','Form 4','Nairobi'),
	(5,'Esther','Akinyi','F','2009-06-30','Form 2','Nakuru'),
	(6,'Felix','Otieno','M','2009-09-14','Form 2','Eldoret'),
	(7,'Grace','Mwangi','F','2008-01-22','Form 3','Nairobi'),
	(8,'Hassan','Abdi','M','2007-04-09','Form 4','Mombasa'),
	(9,'Ivy','Chebet','F','2009-12-01','Form 2','Nakuru'),
	(10,'James','Kariuki','M','2008-08-17','Form 3','Nairobi');

select * from students;

-- Create the subjects table with the following columns:

create table subjects(
subject_id INT primary key,
subject_name VARCHAR(100) not null unique,
department VARCHAR(50),
teacher_name VARCHAR(100),
credits INT 
);

-- Insert all 10 subjects into the subjects table

insert into subjects (subject_id,subject_name,department,teacher_name,credits)
values
	(1,'Mathematics','Sciences','Mr.Njoroge',4),
	(2,'English','Languages','Ms.Adhiambo',3),
	(3,'Biology','Sciences','Ms.Otieno',4),
	(4,'History','Humanities','Mr.Waweru',3),
	(5,'Kiswahili','Languages','Ms.Nduta',3),
	(6,'Physics','Sciences','Mr.Kamande',4),
	(7,'Geography','Humanities','Ms.Chebet',3),
	(8,'Chemistry','Sciences','Ms.Muthoni',4),
	(9,'Computer Studies','Sciences','Mr.Oduya',3),
	(10,'Business Studies','Humanities','Ms.Wangari',3);

select * from subjects;

-- Create the exam_results table with the following columns:

create table exam_results(
results_id INT primary key,
student_id INT not null,
subject_id INT not null,
marks INT not null ,
exam_date DATE,
grade VARCHAR(2) 
);


-- Insert all 10 exam results into the exam_results table

insert into exam_results(result_id,student_id,subject_id,marks,exam_date,grade)
values
	(1,1,1,78,'2024-03-15','B'),
	(2,1,2,85,'2024-03-16','A'),
	(3,2,1,92,'2024-03-15','A'),
	(4,2,3,55,'2024-03-17','C'),
	(5,3,2,49,'2024-03-16','D'),
	(6,3,4,71,'2024-03-18','B'),
	(7,4,1,88,'2024-03-15','A'),
	(8,4,6,63,'2024-03-19','C'),
	(9,5,5,39,'2024-03-20','F'),
	(10,6,9,95,'2024-03-21','A');

select * from exam_results;

-- After creating the students table, the school realises they forgot to include a phone number column. Use ALTER TABLE to add a column called phone_number with data type VARCHAR(20).

alter table students 
add column phone_number VARCHAR(20);


-- The column credits in the subjects table needs to be renamed to credit_hours. Write the SQL to rename it.

alter table subjects 
rename column credits to credit_hours;

-- to correct the date of birth spelling mistake

alter table students
rename column date_of_bith to date_of_birth;

-- The school decides they no longer need the phone_number column you added. Write the SQL to remove it completely from the students table.
 
alter table students 
drop column phone_number;


--SECTION B

-- Esther Akinyi has moved from Nakuru to Nairobi. Write an UPDATE statement to change her city. (Her student_id is 5)

update students
set city = 'Nairobi'
where student_id = 5;

-- The marks for result_id 5 were entered incorrectly - the correct marks are 59, not 49. Write an UPDATE to fix this.

update exam_results
set marks = 59
where result_id = 5;

-- The exam result with result_id 9 has been cancelled by the school. Write a DELETE statement to remove it from the exam_results table.

delete from exam_results 
where result_id = 9;


--SECTION C

-- Write a query to find all students who are in Form 4.

select * from students
where class = 'Form 4';

-- Write a query to find all subjects in the Sciences department.


select * from subjects 
where department = 'Sciences';

-- Write a query to find all exam results where the marks are greater than or equal to 70.

select * from exam_results
where marks >= 70;

-- Write a query to find all female students only. (Hint: gender = 'F')

select * from students 
where gender = 'F';

-- Write a query to find all students who are in Form 3 AND from Nairobi

select * from students 
where class = 'Form 3' and city = 'Nairobi';

-- Write a query to find all students who are in Form 2 OR Form 4.

select * from students 
where class = 'Form 2' or class = 'Form 4';



-- PART 2
-- SECTION A: Range, Membership and Search Operators

-- Find all exam results where marks are between 50 and 80

select * from exam_results
where marks between 50 and 80;

-- Find all exams that took place between 15th march 2024 and 18th march 2024

select * from exam_results
where exam_date between '2024-03-15' and '2024-03-18';

-- Find all students who live in Nairobi, Mombasa or Kisumu

select * from students
where city in ('Nairobi','Mombasa','Kisumu');

-- Find all students who are not in Form 2 or Form 3

select * from students
where class not in ('Form 2','Form 3');

-- Find all students whose first name starts with the letter 'A' or 'E'

select * from students
where first_name like 'A%' or first_name like 'E%'; 

-- Find all subjects whose subject name contains the word 'Studies'

select * from subjects 
where subject_name like '%Studies%';


-- SECTION B

-- How many students are currently in form 3

select count(student_id) as form3students
from students 
where class = 'Form 3';

--How many exam results have a mark of 70 and above

select count(result_id) as top_performers
from exam_results
where marks >= 70;

-- SECTION C 

-- Write a query using CASE WHEN to label each exam result with a grade description:
-- 'Distinction' if marks >= 80
-- 'Merit' if marks >= 60
-- 'Pass' if marks >= 40
-- 'Fail' if marks below 40
-- Call the new column performance.

select *,
case 
	when marks >= 80 then 'Distinction'
	when marks >= 60 then 'Merit'
	when marks >= 40 then 'Pass'
	else 'Fail'
end as performance
from exam_results;

-- Write a query using CASE WHEN to label each exam result with a grade description:
-- 'Distinction' if marks >= 80
-- 'Merit' if marks >= 60
-- 'Pass' if marks >= 40
-- 'Fail' if marks below 40
-- Call the new column performance.

select first_name, last_name, class, 
case
	when class in ('Form 3','Form 4') then 'Senior'
	else 'Junior'
end as student_level
from students;


-- Additional Analysis

-- Find all students whose gender is not 'M'

select * from students
where gender != 'M';

-- Find all exam results where marks are greater than 60 and less than 90

select * from exam_results
where marks > 60 and marks < 90;

-- Find all subjects not in the sciences department

select * from subjects 
where department not in ('Sciences');

-- Find all students born between 1st January 2008 and 31st December 2008

select * from students 
where date_of_birth between '2008-01-01' and '2008-12-31';

-- Find all subjects that belong to languages or humanities

select * from subjects 
where department in ('Languages', 'Humanities');

-- Find all students whose last name ends with 'u'

select * from students
where last_name like '%u';

-- Find all teachers whose name starts with 'Ms'

select * from subjects
where teacher_name like 'Ms%';

-- How many students are there in total 

select count(student_id) as total_students
from students;

-- How many subjects are in the sciences department

select count(subject_id) as science_subjects
from subjects
where department in ('Sciences');

-- How many students comes from Nairobi

select count(student_id) as students_nairobi
from students 
where city in ('Nairobi');

-- Write a query using CASE WHEN to label each subject by department as:
-- 'STEM' if the department is Sciences
-- 'Arts' if the department is Humanities or Languages

select *,
case 
	when department = 'Sciences' then 'STEM'
	when department in ('Humanities','Languages') then 'ART'
end as dept_specialization
from subjects;

-- Write a query using CASE WHEN to show each student's gender in full:
-- 'Female' if gender = 'F'
-- 'Male' if gender = 'M'

select *,
case 
	when gender = 'F' then 'Female'
	else 'Male'
end as genderinfull
from students;

-- Write a query using CASE WHEN on the exam_results table to label the marks as:
-- 'Excellent' if marks >= 90
-- 'Good' if marks >= 70
-- 'Average' if marks >= 50
-- 'Poor' if marks below 50

select *,
case
	when marks >= 90 then 'Excellent'
	when marks >= 70 then 'Good'
	when marks >= 50 then 'Average'
	else 'Poor'
end as marks_category
from exam_results;

-- Find all female students in form 3 and from Nairobi

select * from students
where gender = 'F' and class = 'Form 3' and city = 'Nairobi';

-- Count how many exam results fall between 70 and 100

select count(result_id)
from exam_results
where marks between 70 and 100;     
      
 
-- Find all subjects whose teacher's name starts with 'Ms' and the subject is in the sciences department 

select * from subjects
where department = 'Sciences' and teacher_name like 'Ms%';

-- Show each student's full name(together) their class and the student label senior or junior

select concat(first_name,' ',last_name), class,
case 
	when class in ('Form 3','Form 4') then 'Senior'
	else 'Junior'
end
from students;

-- Find all students not from Nairobi who were born after 1st January 2008, display their name in uppercase

select upper(first_name), upper(last_name), date_of_birth, city
from students 
where city not in ('Nairobi') and date_of_birth > '2008-01-01';