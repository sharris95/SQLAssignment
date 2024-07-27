-- Fitness Center Database Assignment

-- Drop WorkoutSessions Table if it exists
DROP TABLE IF EXISTS WorkoutSessions;

-- Drop Members Table if it exists
DROP TABLE IF EXISTS Members;

-- Create Members Table
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

-- Create WorkoutSessions Table
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Insert Members Data
INSERT INTO Members (id, name, age) VALUES (1, 'Jane Doe', 28);
INSERT INTO Members (id, name, age) VALUES (2, 'John Smith', 34);
INSERT INTO Members (id, name, age) VALUES (3, 'Emily Johnson', 22);

-- Insert WorkoutSessions Data
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES (1, 1, '2023-07-21', 'Morning', 'Yoga');
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES (2, 2, '2023-07-22', 'Afternoon', 'Cardio');
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES (3, 3, '2023-07-23', 'Evening', 'Strength Training');

-- Update Workout Session for Jane Doe
UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 1 AND session_date = '2023-07-21';

-- Delete John Smith’s Data
DELETE FROM WorkoutSessions
WHERE member_id = 2;

DELETE FROM Members
WHERE id = 2;

-- Verify Members Table
SELECT * FROM Members;

-- Verify WorkoutSessions Table
SELECT * FROM WorkoutSessions;

-- Verify Jane Doe's updated session time
SELECT * FROM WorkoutSessions WHERE member_id = 1;

-- Verify John Smith's deletion
SELECT * FROM Members WHERE name = 'John Smith';
SELECT * FROM WorkoutSessions WHERE member_id = 2;
