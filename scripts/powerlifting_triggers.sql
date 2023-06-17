-- Функция для тригера --
CREATE OR REPLACE FUNCTION check_trainer_experience() RETURNS TRIGGER AS 
$$
BEGIN
    IF NEW.experience < 2 THEN
        RAISE EXCEPTION 'Trainer experience should be greater than 1';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Тригер на добавление нового тренера, который проверяет, что его опыт 
больше года --
CREATE TRIGGER check_trainer_experience 
BEFORE INSERT ON cd.trainers 
FOR EACH ROW 
EXECUTE FUNCTION check_trainer_experience();

-- Функция для тригера --
CREATE OR REPLACE FUNCTION check_group() RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (SELECT * FROM cd.groups WHERE id = NEW.group_id) THEN
        RAISE EXCEPTION 'Athlete group does not exist';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Тригер на изменение группы у спортсмена, который проверяет, что новая 
группа существует в бд --
CREATE TRIGGER check_athlete_group 
BEFORE UPDATE ON cd.athletes 
FOR EACH ROW 
EXECUTE FUNCTION check_group();
