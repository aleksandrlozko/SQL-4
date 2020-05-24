INSERT INTO country (country) VALUES ('Ukraine');
INSERT INTO country (country) VALUES ('UK');
INSERT INTO country (country) VALUES ('USA');

INSERT INTO director (director) VALUES ('David Lynch');
INSERT INTO director (director) VALUES ('Martin Scorsese');
INSERT INTO director (director) VALUES ('Steven Soderbergh');

INSERT INTO actor (name) VALUES ('Michael');
INSERT INTO actor (name) VALUES ('Eva');
INSERT INTO actor (name) VALUES ('Alex');

INSERT INTO movie (title) VALUES ('American Horror Story');
INSERT INTO movie (title) VALUES ('Elite');
INSERT INTO movie (title) VALUES ('Scream Queens');

INSERT INTO movie_country (country_country, movie_title) VALUES ('Ukraine', 'American Horror Story');
INSERT INTO movie_country (country_country, movie_title) VALUES ('UK', 'Elite');
INSERT INTO movie_country (country_country, movie_title) VALUES ('USA', 'Scream Queens');

INSERT INTO movie_director (director_director, movie_title) VALUES ('David Lynch', 'American Horror Story');
INSERT INTO movie_director (director_director, movie_title) VALUES ('Martin Scorsese', 'Elite');
INSERT INTO movie_director (director_director, movie_title) VALUES ('Steven Soderbergh', 'Scream Queens');

INSERT INTO main_actor (actor_name, movie_title) VALUES ('Michael', 'Scream Queens');
INSERT INTO main_actor (actor_name, movie_title) VALUES ('Eva', 'Elite');
INSERT INTO main_actor (actor_name, movie_title) VALUES ('Alex', 'American Horror Story');
