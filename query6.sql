Query 6: Query to find the best comedy movies to recommend to the user whose userId is 903. Use the trained model to provide recommendations.

SELECT*FROM ML.PREDICT(MODEL `cloud-training-prod-bucket.movies.movie_recommender`,
    (
    SELECT movieId,
      title,
      903 AS userId
    FROM `movies.movielens_movies`,
      UNNEST(genres) g
    WHERE g ='Comedy'))
ORDERBY predicted_rating DESC
LIMIT
  5