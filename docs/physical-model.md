# Физическая модель

Таблица `trainers`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`experience` | Опыт работы | `integer` | `not null`
`birth_date` | Дата рождения | `timestamp` | `not null`
`records` | Рекорд | `integer` | `not null`
`contacts` | Номер телефона | `varchar(20)` | `not null`
`trainer_id` | Идентификатор | `integer` | `primary key`
`full_name` | ФИО | `varchar(100)` | `not null`

Таблица `trainers_group`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`trainer` | Тренер | `varchar(20)` | `foreign key`
`group` | Группа | `varchar(20)` | `foreign key`
`connection_id` | Идентификатор | `integer` | `primary key`

Таблица `group`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`group_id` | Идентификатор | `integer` | `primary key`
`group_name` | Название группы | `varchar(20)` | `not null`
`number_of_athletes` | Число атлетов | `integer` | `not null`

Таблица `trainers_exercise`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`trainer` | Тренер | `varchar(20)` | `foreign key`
`exercise` | Упражнение | `varchar(20)` | `foreign key`
`connection_id` | Идентификатор | `integer` | `primary key`

Таблица `exercises`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`name` | Название упражнения | `varchar(20)` | `not null`
`importance` | Важность | `varchar(20)` | `not null`
`injury risk` | Травмоопасность | `varchar(20)` | `not null`
`exercise_id` | Идентификатор | `integer` | `primary key`

Таблица `results`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`result_id` | Идентификатор | `integer` | `primary key`
`athlet` | Спортсмен | `varchar(20)` | `foreign key`
`exercise` | Упражнение | `varchar(20)` | `foreign key`
`result` | Результат | `integer` | `not null`
`date` | Дата выполнения | `timestamp` | `not null`

Таблица `athletes`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`age` | Возраст | `integer` | `not null`
`contacts` | Номер телефона | `varchar(20)` | `not null`
`category` | Разряд | `varchar(100)` | `not null`
`duration` | Длительность пребывания в команде | `integer` | `not null`
`athlet_id` | Идентификатор | `integer` | `primary key`
`group` | Группа | `varchar(20)` | `foreign key`

Таблица `athletes_condition`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`athlete` | Спортсмен | `varchar(20)` | `foreign key`
`condition` | Состояние | `varchar(20)` | `foreign key`
`connection_id` | Идентификатор | `integer` | `primary key`
`valid_from` | Действителен с | `timestamp` | `not null`
`valid_to` | Действителен по | `timestamp` | `not null`

Таблица `condition`:

Название  | Описание | Тип данных | Ограничение
------- | -------- | -------- | --------
`examination_date` | Дата исследования | `timestamp` | `not null`
`physical_condition` | Физическое состояние | `varchar(20)` | `not null`
`condition_id` | Идентификатор | `integer` | `primary key`

Таблица `trainers`:

CREATE TABLE cd.trainers (
    trainer_id integer NOT NULL,
    experience integer NOT NULL,
    birth_date timestamp NOT NULL,
    records integer NOT NULL,
    contacts character varying(20) NOT NULL,
    full_name character varying(100) NOT NULL,

    CONSTRAINT trainers_pk PRIMARY KEY (trainer_id)
);

Таблица `trainers_group`:

CREATE TABLE cd.trainers_group (
    connection_id integer NOT NULL,
    trainer integer NOT NULL,
    group_name integer NOT NULL,

    CONSTRAINT trainers_group_pk PRIMARY KEY (connection_id)

    CONSTRAINT fk_trainers_group_trainer FOREIGN KEY (trainer)
       REFERENCES cd.trainers(trainer_id) ON DELETE SET NULL,
    CONSTRAINT fk_trainers_group_group_name FOREIGN KEY (group_name)
        REFERENCES cd.group(group_id) ON DELETE SET NULL
);

Таблица `trainers_exercise`:

CREATE TABLE cd.trainers_exercise (
    connection_id integer NOT NULL,
    trainer integer NOT NULL,
    exercise integer NOT NULL,

    CONSTRAINT trainers_exercise_pk PRIMARY KEY (connection_id)

    CONSTRAINT fk_trainers_exercise_trainer FOREIGN KEY (trainer) 
        REFERENCES cd.trainers(trainer_id) ON DELETE SET NULL,
    CONSTRAINT fk_trainers_exercise_exercise FOREIGN KEY (exercise) 
        REFERENCES cd.exercises(exercise_id) ON DELETE SET NULL
);

Таблица `group`:

CREATE TABLE cd.group (

    group_id integer NOT NULL,

    number_of_athletes integer NOT NULL,

    group_name character varying(100) NOT NULL

    CONSTRAINT group_pk PRIMARY KEY (group_id)
);

Таблица `exercise`:

CREATE TABLE cd.exercises (
    exercise_id integer NOT NULL,
    importance character varying(20) NOT NULL,
    injury_risk character varying(20) NOT NULL,
    name character varying(100) NOT NULL

    CONSTRAINT exercises_pk PRIMARY KEY (exercise_id)
);

Таблица `results`:

CREATE TABLE cd.results (
    result_id integer NOT NULL,
    athlete integer NOT NULL,
    exercise integer NOT NULL,
    result integer NOT NULL,
    date timestamp NOT NULL,

    CONSTRAINT results_pk PRIMARY KEY (result_id)

    CONSTRAINT fk_results_athlete FOREIGN KEY (athlete) 
        REFERENCES cd.atheletes(athlet_id) ON DELETE SET NULL,
    CONSTRAINT fk_results_exercise FOREIGN KEY (exercise) 
        REFERENCES cd.exercises(exercise_id) ON DELETE SET NULL
);

Таблица `athletes`:

CREATE TABLE cd.athletes (
    athlete_id integer NOT NULL,
    age integer NOT NULL,
    contacts character varying(20) NOT NULL,
    category character varying(100) NOT NULL,
    duration integer NOT NULL,
    group_name integer NOT NULL,

    CONSTRAINT athletes_pk PRIMARY KEY (athlete_id)

    CONSTRAINT fk_athletes_group_name FOREIGN KEY (group_name) 
        REFERENCES cd.group(group_id) ON DELETE SET NULL
);

Таблица `athletes_condition`:

CREATE TABLE cd.athletes_condition (
    connection_id integer NOT NULL,
    athlete integer NOT NULL,
    current_condition integer NOT NULL,
    Valid_from timestamp NOT NULL,
    Valid_to timestamp NOT NULL,

    CONSTRAINT athletes_condition_pk PRIMARY KEY (connection_id)

    CONSTRAINT fk_athletes_condition_athlete FOREIGN KEY (athlete)
        REFERENCES cd.athletes(athelete_id) ON DELETE SET NULL,
    CONSTRAINT fk_athletes_condition_current_condition FOREIGN KEY (current_condition)
        REFERENCES cd.condition(condition_id) ON DELETE SET NULL
);

Таблица `condition`:

CREATE TABLE cd.condition (
    condition_id integer NOT NULL,
    examination_date timestamp NOT NULL,
    physical_condition character varying(20) NOT NULL

    CONSTRAINT condition_pk PRIMARY KEY (condition_id)
);
