SELECT DISTINCT m.title
FROM users u
JOIN occupations o ON u.occupation_id=o.id
JOIN ratings r ON u.id=r.user_id
JOIN movies m ON r.movie_id=m.id
JOIN genres_movies gm ON gm.movie_id=m.id
JOIN genres g ON g.id=gm.genre_id
WHERE gender='M'
AND g.name='Sci-Fi'
AND o.name='Student'
AND rating=5
AND age=24;