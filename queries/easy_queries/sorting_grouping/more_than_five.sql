-- Return the class that has at least 5 students
-- the students must be unique
-- use having since we want to be able to count instead of where since it filters out
Select class
From Courses
group by class
having Count(distinct student) >= 5