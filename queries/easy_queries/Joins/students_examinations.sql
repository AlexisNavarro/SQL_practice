-- In this query you want to find the amount of exams that a student has taken for each subject
-- even if a subject has 0 exams taken for a certain subject

-- You have 3 tables, Students, Subject, and Examinations
-- To be able to find the students that took a subject,
-- you need to find all possible combinations such as student + subject

-- To do this, you need to use a cross join to find all possible combinations between both tables.

-- Then, to count how many times each student took each subject,
-- LEFT JOIN the Examinations table ON both student_id and subject_name.


-- This ensures that all student-subject combinations are preserved,
-- and exam counts reflect actual attempts or 0 if none were taken.


SELECT
    stu.student_id, stu.student_name, sub.subject_name, count(ex.subject_name) as attended_exams 
From
    Students stu
Cross join
    Subjects sub
left join
    Examinations ex on stu.student_id = ex.student_id and sub.subject_name = ex.subject_name
Group by
    stu.student_id, sub.subject_name
Order by 
    stu.student_id, sub.subject_name;
