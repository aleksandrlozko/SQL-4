-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-05-24 17:42:45 EEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g

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
    title VARCHAR2(60) NOT NULL,
    time_duration NUMBER(5) NOT NULL,
    release_year NUMBER(5) NOT NULL
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
