INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (1, 5, 'Beginers1')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (2, 8, 'Beginers2')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (3, 10, 'Beginers3')
INSERT INTO cd.group (group_id, number_of_athletes, group_name) 
VALUES (4, 6, 'Intermediate1')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (5, 7, 'Intermediate2')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (6, 11, 'Intermediate3')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (7, 13, 'Advanced1')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (8, 9, 'Advanced2')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (9, 4, 'Advanced3')
INSERT INTO cd.group (group_id, number_of_athletes, group_name)
VALUES (10, 12, 'Professionals')


------------------------------------------------------------------------------------


INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (1, 5, '1985-12-28', 1000, '+7-926-555-1234', 'Ivan Petrov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (2, 3, '1992-06-15', 800, '+7-926-555-5678', 'Mikhail Sergeyev');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (3, 7, '1978-08-23', 750, '+7-926-555-9876', 'Alexei Smirnov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (4, 2, '1995-03-18', 650, '+7-926-555-4321', 'Pavel Kuznetsov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (5, 10, '1975-11-11', 880, '+7-926-555-6789', 'Emily Brown');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (6, 4, '1990-10-05', 852, '+7-926-555-2468', 'Denis Volkov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (7, 8, '1982-01-01', 550, '+7-926-555-3456', 'Maria Ivanova');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (8, 6, '1988-04-20', 730, '+7-926-555-7890', 'Andrey Vorobyov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (9, 9, '1977-09-30', 1100, '+7-926-555-1111', 'Anton Kuznetsov');
INSERT INTO cd.trainers (trainer_id, experience, birth_date, record, 
contacts, full_name) 
VALUES (10, 1, '1998-12-10', 645, '+7-926-555-2222', 'Roman Fedorov');

INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (1, 1, 3);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (2, 2, 4);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (3, 7, 1);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (4, 6, 2);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (5, 3, 5);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (6, 4, 7);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (7, 5, 9);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (8, 10, 8);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (9, 8, 6);
INSERT INTO cd.trainers_group (connection_id, trainer, group_name) 
VALUES (10, 9, 10);


------------------------------------------------------------------------------------


INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (1, 'High', 'Low', 'Bench Press');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (2, 'High', 'High', 'Squats');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (3, 'High', 'Low', 'Deadlift');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (4, 'Low', 'Low', 'Leg Curls');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (5, 'Medium', 'High', 'Clean and Jerk');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (6, 'Medium', 'Low', 'Pull-Ups');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (7, 'Low', 'Low', 'Bicep Curls');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (8, 'Medium', 'High', 'Dumbbell Flys');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (9, 'Low', 'Low', 'Triceps Extensions');
INSERT INTO cd.exercises (exercise_id, importance, injury_risk, name) 
VALUES (10, 'Medium', 'Low', 'Rows');


------------------------------------------------------------------------------------


INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (1, 1, 2);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (2, 1, 5);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (3, 2, 3);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (4, 2, 6);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (5, 3, 1);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (6, 3, 7);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (7, 4, 1);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (8, 4, 8);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (9, 5, 2);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (10, 5, 10);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (1, 6, 3);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (2, 6, 9);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (3, 7, 2);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (4, 7, 4);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (5, 8, 1);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (6, 8, 7);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (7, 9, 3);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (8, 9, 5);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (9, 10, 2);
INSERT INTO cd.trainers_exercise (connection_id, trainer, exercise) 
VALUES (10, 10, 6);


------------------------------------------------------------------------------------



INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (1, 25, '+7-920-555-1234', '1 junior', 120, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (2, 37, '+7-920-555-5678', '3 junior', 90, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (3, 32, '+7-920-555-9101', '2 junior', 180, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (4, 28, '+7-920-555-1212', '2 junior', 360, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (5, 24, '+7-920-555-3434', '1 junior', 240, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (6, 24, '+7-920-555-5656', '3 junior', 360, 1);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (7, 30, '+7-920-555-7878', '3 junior', 150, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (8, 27, '+7-920-555-9090', '3 junior', 240, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (9, 23, '+7-920-555-2323', '2 junior', 180, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (10, 29, '+7-920-555-4545', '1 junior', 90, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (11, 25, '+7-920-455-1234', '1 junior', 120, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (12, 43, '+7-920-455-5678', '2 junior', 1000, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (13, 32, '+7-920-455-9101', '1 junior', 180, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (14, 28, '+7-920-455-1212', '2 junior', 200, 2);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (15, 41, '+7-920-455-3434', '3 junior', 240, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (16, 24, '+7-920-455-5656', '3 junior', 360, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (17, 30, '+7-920-455-7878', '1 junior', 120, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (18, 47, '+7-920-455-9090', '2 junior', 240, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (19, 23, '+7-920-455-2323', '3 junior', 180, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (20, 29, '+7-920-455-4545', '1 junior', 300, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (21, 25, '+7-926-454-1234', '2 junior', 120, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (22, 39, '+7-926-555-5678', '3 junior', 90, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (23, 32, '+7-926-555-9101', '2 junior', 180, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (24, 28, '+7-926-555-1212', '2 adult', 365, 3);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (25, 61, '+7-926-555-3434', '2 adult', 240, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (26, 24, '+7-926-555-5656', '1 adult', 360, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (27, 30, '+7-926-555-7878', '1 adult', 400, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (28, 27, '+7-926-555-9090', '2 adult', 240, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (29, 23, '+7-926-555-2323', '3 adult', 180, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (30, 29, '+7-926-555-4545', '3 adult', 90, 4);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (31, 25, '+7-918-555-1234', '3 adult', 120, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (32, 29, '+7-918-555-5678', '1 adult', 90, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (33, 32, '+7-918-555-9101', '3 adult', 180, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (34, 28, '+7-918-555-1212', '3 adult', 60, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (35, 31, '+7-918-555-3434', '2 adult', 240, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (36, 34, '+7-918-555-5656', '2 adult', 360, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (37, 30, '+7-918-555-7878', '2 adult', 120, 5);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (38, 27, '+7-918-555-9090', '1 adult', 240, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (39, 43, '+7-918-555-2323', '1 adult', 180, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (40, 49, '+7-918-555-4545', '2 adult', 90, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (41, 25, '+7-910-355-1234', '1 adult', 120, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (42, 39, '+7-910-355-5678', '3 adult', 90, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (43, 32, '+7-910-355-9101', '3 adult', 180, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (44, 28, '+7-910-355-1212', '2 adult', 60, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (45, 21, '+7-910-355-3434', '3 adult', 240, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (46, 24, '+7-910-355-5656', '1 adult', 360, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (47, 30, '+7-910-355-7878', '2 adult', 120, 6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (48, 27, '+7-910-355-9090', 'Сandidate for master of sports', 540, 
6);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (49, 23, '+7-910-355-2323', 'Master of sports', 780, 7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (50, 29, '+7-910-355-4545', 'Сandidate for master of sports', 990, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (51, 25, '+7-959-555-1234', 'Сandidate for master of sports', 1120, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (52, 19, '+7-959-555-5678', 'Master of sports', 1920, 7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (53, 32, '+7-959-555-9101', 'Сandidate for master of sports', 980, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (54, 28, '+7-959-555-1212', 'Сandidate for master of sports', 60, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (55, 61, '+7-959-555-3434', 'Сandidate for master of sports', 840, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (56, 44, '+7-959-555-5656', 'Master of sports', 760, 7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (57, 30, '+7-959-555-7878', 'Master of sports', 590, 7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (58, 37, '+7-959-555-9090', 'Сandidate for master of sports', 1000, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (59, 53, '+7-959-555-2323', 'Master of sports', 580, 7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (60, 49, '+7-959-555-4545', 'Сandidate for master of sports', 890, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (61, 35, '+7-918-555-1234', 'Сandidate for master of sports', 720, 
7);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (62, 39, '+7-918-555-5678', 'Master of sports', 1190, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (63, 32, '+7-918-555-9101', 'Master of sports', 2180, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (64, 28, '+7-918-555-1212', 'Master of sports', 3260, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (65, 41, '+7-918-555-3434', 'Сandidate for master of sports', 1240, 
8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (66, 31, '+7-918-555-5656', 'Master of sports', 1360, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (67, 30, '+7-918-555-7878', 'Сandidate for master of sports', 2120, 
8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (68, 27, '+7-918-555-9090', 'Master of sports', 1240, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (69, 33, '+7-918-555-2323', 'Master of sports', 2180, 8);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (70, 49, '+7-918-555-4545', 'Сandidate for master of sports', 2390, 
9);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (71, 45, '+7-918-545-1234', 'Master of sports', 1820, 9);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (72, 54, '+7-918-545-5678', 'Сandidate for master of sports', 920, 
9);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (73, 35, '+7-918-545-9101', 'Сandidate for master of sports', 2180, 
9);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (74, 25, '+7-918-545-1212', 'Master of sports of international 
class', 4260, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (75, 37, '+7-918-545-3434', 'Master of sports of international 
class', 2240, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (76, 26, '+7-918-544-5656', 'Honored master of sports', 1360, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (77, 30, '+7-918-535-7878', 'Master of sports of international 
class', 3120, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (78, 28, '+7-918-525-9090', 'Master of sports of international 
class', 1240, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (79, 25, '+7-918-555-2383', 'Master of sports of international 
class', 1830, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (80, 29, '+7-918-123-4545', 'Honored master of sports', 2190, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (81, 50, '+7-926-555-9236', 'Honored master of sports', 3260, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (82, 40, '+7-926-555-7558', 'Master of sports of international 
class', 1120, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (83, 33, '+7-926-555-2340', 'Honored master of sports', 2430, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (84, 28, '+7-926-555-2323', 'Master of sports of international 
class', 1280, 10);
INSERT INTO cd.athletes (athlete_id, age, contacts, category, duration, 
group_name) 
VALUES (85, 24, '+7-926-555-4305', 'Master of sports of international 
class', 3590, 10);


INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (1, 1, 1, 80, '2023-01-21 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (2, 2, 1, 40, '2023-01-22 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (3, 3, 1, 50, '2023-01-23 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (4, 4, 1, 80, '2023-01-24 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (5, 5, 1, 70, '2023-01-25 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (6, 6, 1, 65, '2023-01-26 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (7, 7, 2, 66, '2023-01-27 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (8, 8, 2, 55, '2023-01-28 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (9, 9, 2, 50, '2023-01-29 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (10, 10, 2, 70, '2023-01-10 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (11, 11, 2, 100, '2023-01-11 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (12, 12, 2, 74, '2023-01-12 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (13, 13, 3, 81, '2023-01-13 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (14, 14, 3, 100, '2023-01-14 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (15, 15, 3, 100, '2023-01-15 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (16, 16, 3, 100, '2023-01-16 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (17, 17, 3, 110, '2023-01-17 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (18, 18, 3, 120, '2023-01-18 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (19, 19, 1, 90, '2023-01-19 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (20, 20, 1, 95, '2023-01-20 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (21, 21, 1, 105, '2023-01-21 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (22, 22, 1, 111, '2023-01-22 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (23, 23, 1, 90, '2023-01-23 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (24, 24, 1, 97, '2023-01-24 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (25, 25, 1, 50, '2023-01-25 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (26, 26, 2, 80, '2023-01-26 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (27, 27, 3, 100, '2023-01-27 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (28, 28, 3, 100, '2023-01-28 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (29, 29, 3, 100, '2023-01-29 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (30, 30, 3, 100, '2023-01-30 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (31, 31, 2, 80, '2023-01-31 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (32, 32, 1, 101, '2023-02-01 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (33, 33, 2, 67, '2023-02-02 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (34, 34, 2, 120, '2023-02-03 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (35, 35, 3, 84, '2023-02-04 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (36, 36, 1, 130, '2023-02-05 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (37, 37, 3, 130, '2023-02-06 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (38, 38, 2, 139, '2023-02-07 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (39, 39, 1, 121, '2023-02-08 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (40, 40, 2, 117, '2023-02-09 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (41, 41, 2, 129, '2023-02-10 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (42, 42, 1, 137, '2023-02-11 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (43, 43, 1, 140, '2023-02-12 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (44, 44, 2, 130, '2023-03-13 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (45, 45, 3, 150, '2023-03-14 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (46, 46, 4, 160, '2023-03-15 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (47, 47, 5, 170, '2023-03-16 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (48, 48, 2, 190, '2023-03-17 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (49, 49, 1, 195, '2023-03-18 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (50, 50, 2, 165, '2023-03-19 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (51, 51, 2, 144, '2023-03-20 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (52, 52, 3, 159, '2023-03-21 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (53, 53, 1, 143, '2023-03-22 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (54, 54, 2, 140, '2023-03-23 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (55, 55, 1, 165, '2023-03-24 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (56, 56, 1, 150, '2023-04-25 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (57, 57, 2, 180, '2023-04-26 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (58, 58, 3, 200, '2023-04-27 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (59, 59, 1, 150, '2023-04-28 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (60, 60, 1, 155, '2023-04-01 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (61, 61, 1, 165, '2023-04-02 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (62, 62, 1, 160, '2023-04-03 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (63, 63, 2, 185, '2023-04-04 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (64, 64, 2, 195, '2023-04-05 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (65, 65, 2, 200, '2023-04-06 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (66, 66, 2, 165, '2023-04-07 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (67, 67, 2, 189, '2023-04-08 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (68, 68, 3, 210, '2023-04-09 10:00:00');
INSERT INTO cd.results (result_d, athlete, exercise, result, date) 
VALUES (69, 69, 3, 212, '2023-04-10 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (70, 70, 1, 180, '2023-04-11 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (71, 71, 2, 240, '2023-04-12 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (72, 72, 2, 239, '2023-04-13 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (73, 73, 3, 250, '2023-04-14 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (74, 74, 3, 260, '2023-04-15 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (75, 75, 3, 240, '2023-04-16 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (76, 76, 3, 260, '2023-04-17 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (77, 77, 3, 250, '2023-04-18 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (78, 78, 1, 200, '2023-04-19 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (79, 79, 1, 189, '2023-04-20 08:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (80, 80, 1, 203, '2023-04-21 10:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (81, 81, 1, 205, '2023-04-22 12:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (82, 82, 1, 210, '2023-04-23 14:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (83, 83, 1, 220, '2023-04-24 16:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (84, 84, 1, 213, '2023-04-25 18:00:00');
INSERT INTO cd.results (result_id, athlete, exercise, result, date) 
VALUES (85, 85, 1, 205, '2023-04-26 08:00:00');
