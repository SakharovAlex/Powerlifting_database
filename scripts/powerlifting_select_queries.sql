--- Запрос для получения травмоопасных упржанений --- сделать по типу как 
в вики первый пример 
SELECT name, injury_risk
FROM cd.exercises
GROUP BY name, injury_risk
HAVING injury_risk = 'High';

--- Выводим тренеров (от более опытных к менее опытным) ---
SELECT full_name, experience 
FROM cd.trainers 
ORDER BY experience DESC;

--- Смотрим на среднее время находение людей в команде с определенным 
разрядом ---
SELECT category, AVG(duration) OVER (PARTITION BY category) 
FROM cd.athletes;

-- Ранжируем упражнения по их важности ---
SELECT name, importance, injury_risk,
    ROW_NUMBER() OVER (ORDER BY importance ASC) AS exercise_rank
FROM cd.exercises
ORDER BY importance ASC;

--- Данный запрос показывает общее число групп и спортсменов, которыми 
руководит каждый тренер ---
SELECT full_name, 
    COUNT(connection_id) OVER (PARTITION BY trainer_id ORDER BY 
trainer_id) AS num_of_groups, 
    SUM(number_of_athletes) OVER (PARTITION BY trainer_id ORDER BY 
trainer_id) AS total_athletes 
FROM cd.trainers 
JOIN cd.trainers_group ON cd.trainers.trainer_id = 
cd.trainers_group.trainer 
JOIN cd.group ON cd.trainers_group.group_name = cd.group.group_id 
ORDER BY trainer_id; 

--- Сравниваем последний результат спортсмена с предыдущим ---
SELECT athlete_id,
    MAX(res.date) AS last_result_date,
    LAG(res.result) OVER (PARTITION BY res.athlete ORDER BY res.date) AS 
previous_result
FROM cd.athletes
JOIN cd.results AS res ON athlete_id = res.athlete
GROUP BY athlete_id, res.result, res.date, res.athlete;
