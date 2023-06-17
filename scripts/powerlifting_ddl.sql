CREATE SCHEMA cd;

CREATE TABLE cd.trainers (
    trainer_id integer NOT NULL PRIMARY KEY,
	experience integer NOT NULL,
    birth_date timestamp NOT NULL,
    records integer NOT NULL,
    contacts character varying(20) NOT NULL,
    full_name character varying(100) NOT NULL
);

CREATE TABLE cd.trainers_group (
    connection_id integer NOT NULL PRIMARY KEY,
	trainer character varying(100) NOT NULL,
	group_name character varying(100) NOT NULL, -- group
    FOREIGN KEY (trainer) REFERENCES cd.trainers(trainer_id) ON DELETE SET 
NULL,
	FOREIGN KEY (group_name) REFERENCES cd.group(group_id) ON DELETE 
SET NULL
);

CREATE TABLE cd.trainers_exercise (
    connection_id integer NOT NULL PRIMARY KEY,
	trainer integer NOT NULL, -- integer
	exercise integer NOT NULL, -- integer
        FOREIGN KEY (trainer) REFERENCES cd.trainers(trainer_id) ON DELETE 
SET NULL,
	    FOREIGN KEY (exercise) REFERENCES cd.exercises(exercise_id) ON 
DELETE SET NULL
);

CREATE TABLE cd.group (
    group_id integer NOT NULL PRIMARY KEY,
	number_of_athletes integer NOT NULL,
    group_name character varying(100) NOT NULL
);

CREATE TABLE cd.exercises (
    exercise_id integer NOT NULL PRIMARY KEY,
	importance character varying(20) NOT NULL,
    injury_risk character varying(20) NOT NULL,
    name character varying(100) NOT NULL
);

CREATE TABLE cd.results (
    result_id integer NOT NULL PRIMARY KEY,
	athlet integer NOT NULL,
	exercise integer NOT NULL,
	result integer NOT NULL,
	date timestamp NOT NULL,
        FOREIGN KEY (athlet) REFERENCES cd.atheletes(athlet_id) ON DELETE 
SET NULL,
	    FOREIGN KEY (exercise) REFERENCES cd.exercises(exercise_id) ON 
DELETE SET NULL
);

CREATE TABLE cd.athletes (
    athlet_id integer NOT NULL PRIMARY KEY,
	age integer NOT NULL,
    contacts character varying(20) NOT NULL,
	category character varying(100) NOT NULL,
	duration integer NOT NULL,
	group_name integer NOT NULL,
        FOREIGN KEY (group_name) REFERENCES cd.group(group_id) ON DELETE 
SET NULL
);

CREATE TABLE cd.athletes_condition (
    connection_id integer NOT NULL PRIMARY KEY,
	athlete integer NOT NULL,
	current_condition integer NOT NULL,
	Valid_from timestamp NOT NULL,
    Valid_to timestamp NOT NULL,
        FOREIGN KEY (athlete) REFERENCES cd.athletes(athelete_id) ON 
DELETE SET NULL,
	    FOREIGN KEY (current_condition) REFERENCES 
cd.condition(condition_id) ON DELETE SET NULL
);

CREATE TABLE cd.condition (
    condition_id integer NOT NULL PRIMARY KEY,
	examination_date timestamp NOT NULL,
    physical_condition character varying(20) NOT NULL
);

