CREATE OR REPLACE FUNCTION Deleter(text) RETURNS void
AS $$
	DELETE FROM cd.group
	WHERE cd.group.group_name = $1
$$
LANGUAGE SQL;

CREATE OR REPLACE FUNCTION cd.get_trainers_for_group(group_name character 
varying) RETURNS TABLE (
    trainer_id integer,
    full_name character varying,
    experience integer,
    records integer,
    contacts character varying
)
AS $$
BEGIN
    RETURN QUERY
        SELECT trainers.trainer_id, trainers.full_name, 
trainers.experience, trainers.records, trainers.contacts
        FROM cd.trainers
        JOIN cd.trainers_group ON trainers.trainer_id = 
trainers_group.trainer
        JOIN cd.group ON cd.group.group_id = trainers_group.group_name
        WHERE cd.group.group_name = $1;
END;
$$ LANGUAGE plpgsql;
