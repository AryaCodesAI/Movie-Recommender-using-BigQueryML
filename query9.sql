Query 9: Perform a query to obtain batch predictions for users and movies

SELECT*FROM ML.RECOMMEND(MODEL `cloud-training-prod-bucket.movies.movie_recommender`)
LIMIT 
100000