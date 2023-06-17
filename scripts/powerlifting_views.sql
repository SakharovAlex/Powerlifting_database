-- Представление тренеров с сокрытием контактных номеров -- 
CREATE OR REPLACE VIEW trainers AS
SELECT cd.trainers.full_name, cd.trainers.experience, 
cd.trainers.birth_date, 
    SUBSTR(contacts, 1, 4) || '********' || SUBSTR(contacts, 13) AS 
contacts, 
	cd.trainers.records
FROM cd.trainers;

-- Представление спортсменов с сокрытием текущего разряда и контактных 
номеров --
CREATE OR REPLACE VIEW athletes AS
SELECT cd.athletes.age, 
    SUBSTR(contacts, 1, 4) || '********' || SUBSTR(contacts, 13) AS 
contacts,
	'********' AS category, cd.athletes.duration
FROM cd.athletes;

-- Представление состояний здоровья с сокрытием даты обследования --
CREATE OR REPLACE VIEW conditions AS
SELECT '********' AS examination_date, cd.condition.physical_condition
FROM cd.condition;

-- Представление групп и их тренеров --
CREATE OR REPLACE VIEW groups_trainers AS
SELECT gr.group_name, tr.full_name
FROM cd.group AS gr
LEFT JOIN cd.trainers_group AS tg ON gr.group_id = tg.group_name
LEFT JOIN cd.trainers AS tr ON tg.trainer = tr.trainer_id;

-- Представление физического состояния атлетов по разрядам и дата 
последнего обследования --
CREATE OR REPLACE VIEW athletes_condition AS
SELECT athlete.category, con.physical_condition, 
MAX(athlete_condition.Valid_from) AS last_examination_date
FROM cd.athletes AS athlete
JOIN cd.athletes_condition AS athlete_condition ON athlete.athlete_id = 
athlete_condition.athlete
JOIN cd.condition AS con ON athlete_condition.current_condition = 
con.condition_id
GROUP BY athlete.category, con.physical_condition;

-- Представление тренеров и упражнений, выполнению которых они обучают --
CREATE OR REPLACE VIEW exercises_trainers AS
SELECT exercises.name AS exercise_name, trainers.full_name AS trainer_name
FROM cd.exercises
JOIN cd.trainers_exercise ON exercises.exercise_id = 
trainers_exercise.exercise
JOIN cd.trainers ON trainers_exercise.trainer = trainers.trainer_id;
