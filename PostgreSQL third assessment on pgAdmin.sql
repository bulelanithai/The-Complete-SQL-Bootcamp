CREATE TABLE students(
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  homeroom_number INTEGER,
  phone_number VARCHAR(20) UNIQUE NOT NULL,
  email VARCHAR(120) UNIQUE,
  graduation_year INTEGER
);

CREATE TABLE teachers(
  teacher_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  homeroom_number INTEGER,
  department VARCHAR(50),
  email VARCHAR (20) UNIQUE,
  phone_number VARCHAR(20) UNIQUE
);

INSERT INTO students(first_name,last_name,homeroom_number,phone_number,email,graduation_year)
VALUES
('Mark','Watney',5,'7755551234','mwatney@school.org',2035);

INSERT INTO teachers(first_name,last_name,homeroom_number,department,email,phone_number)
VALUES
('Jonas','Salk',5,'Biology','jsalk@school.org','7755554321');