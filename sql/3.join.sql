-- 1번 유저가 작성한 모든 점수
-- SELECT * FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- Score.objects.filter(user_id=1)
-- User.objects.get(id=1).score_set.all()


-- 1번 영화의 카테고리
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category_movies.category_id = movies_category.id
-- WHERE movies_movie.id=1;

-- Movie.objects.get(id=1).categories.all()



-- 1번 유저가 작성한 모든 점수의 평균
-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- User.objects.get(id=1).score_set.all().aggregate(Avg('value'))
-- Score.objects.filter(user_id=1).aggregate(Avg('value'))

-- Drama 카테고리에 속한 모든 영화
-- SELECT * FROM movies_category
-- JOIN movies_category_movies ON movies_category.id = movies_category_movies.category_id
-- JOIN movies_movie ON movies_category_movies.movie_id = movies_movie.id
-- WHERE movies_category.name = 'drama';

-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category_movies.category_id = movies_category.id
-- WHERE movies_category.name = 'drama';

--Category.objects.get(name='drama').movies.all()


-- group by
-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;

-- User.objects.values('country').annotate(Count('id'))

-- 나라별 점수 평균
SELECT country, COUNT(*), AVG(value) FROM movies_user
JOIN movies_score ON movies_user.id = movies_score.user_id
GROUP BY country;

-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))