-- Verify Members Table
SELECT * FROM Members;

-- Verify WorkoutSessions Table
SELECT * FROM WorkoutSessions;

-- Verify Jane Doe's updated session time
SELECT * FROM WorkoutSessions WHERE member_id = 1;

-- Verify John Smith's deletion from Members table
SELECT * FROM Members WHERE name = 'John Smith';

-- Verify John Smith's deletion from WorkoutSessions table
SELECT * FROM WorkoutSessions WHERE member_id = 2;
