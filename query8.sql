Query 8 : Query to identify the top-rated movies for a specific user
 
  SELECT*FROM ML.PREDICT(MODEL `cloud-training-prod-bucket.movies.movie_recommender`,
      (
      WITH allUsers AS(
        SELECT DISTINCT userId
        FROM movies.movielens_ratings )
      SELECT 96481 AS movieId,
        (
        SELECT title
        FROM movies.movielens_movies
        WHERE movieId=96481) title,
        userId
      FROM allUsers ))
  ORDERBY predicted_rating DESC 
  LIMIT
    100