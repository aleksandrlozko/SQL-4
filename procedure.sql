CREATE OR REPLACE PROCEDURE actor_proc (actor_name IN main_actor.actor_name%TYPE,
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

--TRY--
--BEGIN--
--actor_proc('Eva', 'TEST', 'elite');--
--END;--
