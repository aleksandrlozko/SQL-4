--TRIGGER 1--
SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER trigger1
    BEFORE UPDATE OF director_director ON movie_director
    FOR EACH ROW
   
   
    DECLARE
    DIRECTOR movie_director.director_director%type;
    
    BEGIN
    
        if (:new.director_director != :old.director_director) THEN
            DIRECTOR:= :old.director_director;
            :new.director_director := DIRECTOR;
            
                dbms_output.put_line('You can not change the director!');
                
        END IF;
        
 END trigger1;
 
 --TRY TRIGGER 1--
UPDATE movie_director
SET director_director = 'TEST'
WHERE director_director = 'David Lynch';
 
 --TRIGGER 2--
 SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER trigger2
    BEFORE UPDATE OF country_country ON movie_country
    FOR EACH ROW
   
   
    DECLARE
    DIRECTOR movie_country.country_country%type;
    
    BEGIN
    
        if (:new.country_country != :old.country_country) THEN
            DIRECTOR:= :old.country_country;
            :new.country_country := DIRECTOR;
            
                dbms_output.put_line('You can not change the country!');
                
        END IF;
        
 END trigger2;
    
--TRY TRIGGER 2--
UPDATE movie_country
SET country_country = 'TEST'
WHERE country_country = 'UK';
