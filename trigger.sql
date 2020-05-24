create or replace trigger trigger1
before update OF COUNTRY ON COUNTRY
FOR EACH ROW
declare
    countr varchar2(256);
begin 
    dbms_output.put_line('You can"t change country!');
END;


create or replace trigger trigger2
before update OF DIRECTOR ON DIRECTOR
FOR EACH ROW
declare
    direct varchar2(256);
begin 
    dbms_output.put_line('You can"t change director!');
END;
