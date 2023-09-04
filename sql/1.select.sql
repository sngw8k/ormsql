-- -- Movie.objects.all()
-- SELECT * FROM movies_movie;

-- -- User.objects.all()
-- SELECT * FROM movies_user;


-- Movie.objects.all().order_by('year')
-- Movie.objects.all().order_by('-year')
SELECT * FROM movies_movie
ORDER BY year ASC; 
-- ASC : 오름차순
-- DESC : 내림차순