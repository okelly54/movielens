SELECT `ratings`.`movie_id`, `ratings`.`rating`, `movies`.`id`, `movies`.`title`
FROM `ratings`
INNER JOIN `movies` ON `ratings`.`movie_id`=`movies`.`id`
ORDER BY `rating` ASC;
-- SELECT * FROM `genres`;
SELECT `genres`.`movie_id` FROM `genres_movies` WHERE `genre_id` = 15;

SELECT * FROM `users`;
WHERE `users`.`age` = '24';
-- SELECT * FROM `occupations`;
WHERE `users`.`gender` = 'M'

WHERE `users`.`occupation_id` = 19;