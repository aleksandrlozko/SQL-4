CREATE TYPE movie1 AS OBJECT (movie_director VARCHAR2(60))
/
CREATE TYPE movie_type IS TABLE OF movie1;
/
CREATE OR REPLACE FUNCTION get_title (t_duration movie.time_duration%type,
r_year movie.release_year%type) 
RETURN movie_type AS
result_movie movie_type := movie_type();
                                                      
BEGIN
    FOR cursor IN (
                    SELECT title
                    FROM movie
                    WHERE time_duration = t_duration AND release_year = r_year
                )
    LOOP
        result_movie.extend;
        result_movie(result_movie.last) := movie1(cursor.title);              
    END LOOP;
    RETURN result_movie;
END;
