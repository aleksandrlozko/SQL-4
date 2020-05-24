CREATE TABLE actor (
    name VARCHAR2(60) NOT NULL
);

ALTER TABLE actor ADD CONSTRAINT actor_pk PRIMARY KEY ( name );

CREATE TABLE country (
    country VARCHAR2(60) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( country );

CREATE TABLE director (
    director VARCHAR2(60) NOT NULL
);

ALTER TABLE director ADD CONSTRAINT director_pk PRIMARY KEY ( director );

CREATE TABLE main_actor (
    actor_name   VARCHAR2(60) NOT NULL,
    movie_title  VARCHAR2(60) NOT NULL
);

CREATE TABLE movie (
    title VARCHAR2(60) NOT NULL
);

ALTER TABLE movie ADD CONSTRAINT movie_pk PRIMARY KEY ( title );

CREATE TABLE movie_country (
    country_country  VARCHAR2(60) NOT NULL,
    movie_title      VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_country ADD CONSTRAINT relation_4_pk PRIMARY KEY ( country_country,
                                                                     movie_title );

CREATE TABLE movie_director (
    director_director  VARCHAR2(60) NOT NULL,
    movie_title        VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_director ADD CONSTRAINT relation_3_pk PRIMARY KEY ( director_director,
                                                                      movie_title );

ALTER TABLE main_actor
    ADD CONSTRAINT main_actor_actor_fk FOREIGN KEY ( actor_name )
        REFERENCES actor ( name );

ALTER TABLE main_actor
    ADD CONSTRAINT main_actor_movie_fk FOREIGN KEY ( movie_title )
        REFERENCES movie ( title );

ALTER TABLE movie_director
    ADD CONSTRAINT relation_3_director_fk FOREIGN KEY ( director_director )
        REFERENCES director ( director );

ALTER TABLE movie_director
    ADD CONSTRAINT relation_3_movie_fk FOREIGN KEY ( movie_title )
        REFERENCES movie ( title );

ALTER TABLE movie_country
    ADD CONSTRAINT relation_4_country_fk FOREIGN KEY ( country_country )
        REFERENCES country ( country );

ALTER TABLE movie_country
    ADD CONSTRAINT relation_4_movie_fk FOREIGN KEY ( movie_title )
        REFERENCES movie ( title );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             12
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
