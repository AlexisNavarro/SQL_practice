-- Find the amount of times that a teacher taught a unique subject
-- use Count to track the amount of times a subject is taught but
-- use Distinct to only count whent here is a unique subject id PER teacher
SELECT teacher_id, COUNT(Distinct subject_id) as cnt
From Teacher
Group by teacher_id;