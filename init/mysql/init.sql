CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    grade VARCHAR(2)
);

INSERT INTO students (name, email) VALUES
('Smith Johnson', 'smithj@example.com'),
('William Smith', 'williams@example.com');

INSERT INTO courses (title, credits) VALUES
('Mathematics', 3),
('Science', 2);

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'C');
