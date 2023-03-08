SELECT * FROM `movies` WHERE `id` IN (SELECT * FROM (SELECT 
        `movie_id`
    FROM
        `genres_movies`
    WHERE
        `genre_id` = (SELECT 
                `id`
            FROM
                `genres`
            WHERE
                `name` = 'sci-fi')
INTERSECT
SELECT 
        `ratings`.`movie_id`
    FROM
        `ratings`
    WHERE
        `rating` = 5
            AND `user_id` IN (SELECT 
                `id`
            FROM
                `users`
            WHERE
                `age` = 24 AND `gender` = 'm'
                    AND `occupation_id` = (SELECT 
                        `id`
                    FROM
                        `occupations`
                    WHERE
                        `name` = 'student')) ) AS `p`);