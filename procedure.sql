CREATE or REPLACE procedure update_actor(
    movie_name varchar,
    act_name varchar
) AS

movie_status number;
actor_status number;
no_data exception;

BEGIN
    SELECT
        COUNT(*)
    INTO movie_status
    FROM
        main_actor
    WHERE
        movie_title = movie_name;
    SELECT
        COUNT(*)
    INTO actor_status
    FROM
        main_actor
    WHERE
        actor_name = act_name;
    IF (movie_name = 1) AND (act_name = 1)  THEN
    UPDATE main_actor
        SET
            actor_name = act_name
        WHERE
            movie_title = movie_name;
    ELSE
        raise no_data;
    END IF;

exception

    WHEN no_data THEN
        dbms_output.put_line('Actor or Movie does not exist!');
        
    WHEN others THEN
        dbms_output.put_line('Something else went wrong - '
                             || sqlcode
                             || ' : '
                             || sqlerrm);
END;
