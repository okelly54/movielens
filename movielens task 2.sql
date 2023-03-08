SELECT `ratings`.`movie_id`, `ratings`.`rating`, `movies`.`id`, `movies`.`title`
FROM `ratings`
INNER JOIN `movies` ON `ratings`.`movie_id`=`movies`.`id`
-- ORDER BY `rating` ASC;
WHERE `rating` = 1;