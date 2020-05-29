CREATE OR REPLACE package movie_package IS
    PROCEDURE actor_proc (
    actor_name IN main_actor.actor_name%TYPE,
    act IN main_actor.actor_name%TYPE, 
    mov IN main_actor.movie_title%TYPE
    );
    
    TYPE movie1 IS RECORD (movie_director VARCHAR2(60));

    TYPE movie_type IS TABLE OF movie1;

    FUNCTION get_title (t_duration movie.time_duration%type,
    r_year movie.release_year%type) 
    RETURN movie_type
    pipelined;
END movie_package;

/
CREATE OR REPLACE package body movie_package IS
    PROCEDURE actor_proc (actor_name IN main_actor.actor_name%TYPE,
act IN main_actor.actor_name%TYPE, 
mov IN main_actor.movie_title%TYPE)

IS cursor title_actor
IS SELECT actor_name
FROM actor;
ex exception;

BEGIN
 FOR line IN title_actor
 
        LOOP
        IF (act = line.actor_name) 
        THEN raise ex;
        end if;
        end loop;
        
UPDATE main_actor SET 
    actor_name = act
    WHERE movie_title = mov;
      IF SQL%ROWCOUNT = 0 THEN
        RAISE NO_DATA_FOUND;
        END IF;
        
RETURN;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
  
    DBMS_OUTPUT.put_line('Movie or actor does not exist!');
    
END;

    FUNCTION get_title (t_duration movie.time_duration%type,
r_year movie.release_year%type) 
RETURN movie_type pipelined IS                                  
BEGIN
    FOR itr IN (
                    SELECT title
                    FROM movie
                    WHERE time_duration = t_duration AND release_year = r_year
                )
        LOOP 
            pipe row(itr);
        END LOOP;
    END;   
    
END movie_package;




