QUERY 1: Explore the MovieLens Dataset (the dataset consists of over 138 thousand users, 27 thousand movies, and 20 million ratings.)
 
SELECTCOUNT(DISTINCT userId) numUsers,
  COUNT(DISTINCT movieId) numMovies,
  COUNT(*) totalRatings
FROM movies.movielens_ratings

