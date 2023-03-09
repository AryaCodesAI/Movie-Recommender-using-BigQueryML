Query 7:This result includes movies the user has already seen and rated in the past Query to remove them:

SELECT*FROMML.PREDICT(MODEL `cloud-training-prod-bucket.movies.movie_recommender`,
    (
    WITH seen AS(
      SELECT ARRAY_AGG(movieId) AS movies
      FROM movies.movielens_ratings
      WHERE userId =903)
    SELECT movieId,
      title,
      903 AS userId
    FROM movies.movielens_movies,
      UNNEST(genres) g,
      seen
    WHERE g ='Comedy'AND movieId NOT IN UNNEST(seen.movies) ))
ORDERBY predicted_rating DESCLIMIT
  5