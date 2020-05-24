CREATE VIEW view_movie AS
SELECT
movie.title as name,
movie_country.country_country as country,
movie_director.director_director AS director
FROM movie
    JOIN movie_country
    ON movie.title = movie_country.movie_title
    JOIN movie_director
    ON movie.title = movie_director.movie_title;