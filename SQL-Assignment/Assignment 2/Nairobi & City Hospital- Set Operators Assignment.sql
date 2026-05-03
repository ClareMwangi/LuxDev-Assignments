Set search_path to  city_hospital;

set search_path to nairobi_academy;

-- PART 6 

-- SET OPERATORS

-- Q1. Write a UNION query to show a combined list of all unique cities from the students table and the patients table. Order alphabetically.

select city from nairobi_academy.students s
union
select city from city_hospital.patients p
order by city asc;

-- Q2. Write a UNION ALL query to combine all student first names and all patient full names into one list. 
-- Add a second column called source that says 'Student' or 'Patient' so you can tell where each name came from.

select first_name, 'Student' as source from nairobi_academy.students s
union all 
select full_name,'Patient' as source from city_hospital.patients p;


-- Q3. Write an INTERSECT query to find cities that appear in BOTH the students table and the patients table - cities that are home to both students and patients.

select city from nairobi_academy.students 
intersect
select city from city_hospital.patients;


-- Q4. Write a query that combines all of the following into one result using UNION ALL
-- - student names (labelled 'Student'), patient full names (labelled 'Patient'), and doctor full names (labelled 'Doctor'). 
--Order the final result by the source label, then by name.

select concat(first_name,' ',last_name) as name, 'Student' as source_label from nairobi_academy.students 
union all 
select full_name, 'Patient' as source_label from city_hospital.patients
union all
select full_name,'Doctor' as source_label from city_hospital.doctors 
order by source_label, name;


