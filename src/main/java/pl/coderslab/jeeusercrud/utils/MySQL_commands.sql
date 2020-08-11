# create database `workshop2`
CREATE DATABASE `workshop2`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

# create table `users`
CREATE TABLE IF NOT EXISTS `users`
(
    `id`       INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email`    VARCHAR(255)     NOT NULL UNIQUE KEY,
    `username` VARCHAR(255)     NOT NULL,
    `password` VARCHAR(60)      NOT NULL,
    INDEX (`username`)
);

# UserDao CRUD queries
INSERT INTO `users`(`username`, `email`, `password`) VALUES (?, ?, ?);
SELECT * FROM `users` WHERE `id` = ?;
UPDATE `users` SET `email` = ?, `username` = ?, `password` = ? WHERE `id` = ?;
DELETE FROM `users` WHERE `id` = ?;

# additional UserDao queries
SELECT * FROM `users`;
DELETE FROM `users`;

# reset ID in `users` table to 1
ALTER TABLE `users` DROP `id`;
ALTER TABLE `users` AUTO_INCREMENT = 1;
ALTER TABLE `users` ADD `id` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

# create `admins` table
CREATE TABLE IF NOT EXISTS `admins`
(
    `id`       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email`    VARCHAR(245) NOT NULL UNIQUE,
    `password` VARCHAR(60)  NOT NULL
);

# AdminDao queries
SELECT * FROM `admins` WHERE `email` = ?;