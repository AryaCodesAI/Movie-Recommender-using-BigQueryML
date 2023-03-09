QUERY 3:  Parse the genres into an array and rewrite the results into a table named movielens_movies, as the genres column is a formatted string.

CREATE OR REPLACE TABLE movies.movielens_movies ASSELECT * REPLACE (SPLIT(genres, "|") ASgenres)
FROM movies.movielens_movies_raw