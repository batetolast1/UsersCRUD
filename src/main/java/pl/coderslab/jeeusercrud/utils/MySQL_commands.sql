# UserDao CRUD queries
INSERT INTO `users`(`username`, `email`, password)VALUES (?, ?, ?);
SELECT * FROM `users` WHERE `id` = ?;
UPDATE `users` SET `email` = ?, `username` = ?, `password` = ? WHERE `id` = ?;
DELETE FROM `users` WHERE `id` = ?;

# additional UserDao queries
SELECT * FROM `users`;
DELETE FROM `users`;

# AdminDao CRUD queries
SELECT * FROM `admins` WHERE `email` = ?;