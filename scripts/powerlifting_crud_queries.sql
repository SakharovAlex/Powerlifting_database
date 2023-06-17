INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (86, 35, '+7-926-544-1234', '1 junior', 1365, 4);

SELECT *
FROM cd.athletes
WHERE athlete_id = 86

UPDATE cd.athletes
SET contacts = '+7-925-436-4526'
WHERE athlete_id = 86

DELETE FROM cd.athletes
WHERE athlete_id = 86


INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (86, 86, 1, 100, '2023-03-21 10:00:00');

SELECT *
FROM cd.results
WHERE exercise = 1 AND result > 100

UPDATE cd.results
SET result = 105
WHERE result_id = 86

DELETE FROM cd.results
WHERE athlete_id = 86



