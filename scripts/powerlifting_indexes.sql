-- Индекс по полю athlete для таблицы athletes_condition --
CREATE INDEX idx_athlete_condition ON cd.athletes_condition(athlete);

-- Индекс по полю athlete для таблицы results --
CREATE INDEX idx_athlete_result ON cd.results(athlete);

-- Индекс по полю trainer для таблицы trainers_exercise --
CREATE INDEX idx_trainer_exercise ON cd.trainers_exercise (trainer);
