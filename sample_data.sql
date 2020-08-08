#
# DATABASE STRUCTURE
#

CREATE DATABASE `workshop2`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (1, 'hattie.pacocha@example.org', 'darby42', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (2, 'hand.laron@example.com', 'kutch.angelita', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (3, 'cortney.nicolas@example.org', 'gregorio52', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (4, 'kayli.roberts@example.com', 'lhowell', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (5, 'wmetz@example.net', 'craig.torp', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (6, 'waters.mozelle@example.com', 'jean.moen', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (7, 'senger.alanis@example.org', 'eloy.wisozk', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (8, 'skilback@example.net', 'carolina.metz', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (9, 'effertz.shayna@example.net', 'faustino24', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (10, 'funk.abe@example.net', 'timothy30', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (11, 'ernestine80@example.org', 'adrain67', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (12, 'hmarks@example.com', 'kiara27', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (13, 'tritchie@example.com', 'durgan.meghan', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (14, 'kaya26@example.org', 'nathaniel69', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (15, 'nicola58@example.com', 'cormier.colin', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (16, 'kaycee55@example.com', 'keely83', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (17, 'pablo75@example.net', 'jovan30', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (18, 'rokuneva@example.org', 'hellen.haag', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (19, 'albin.barrows@example.com', 'johnathan67', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (20, 'brodriguez@example.net', 'louvenia.jones', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (21, 'ybayer@example.com', 'dibbert.ona', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (22, 'hamill.ulices@example.com', 'ecruickshank', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (23, 'dana27@example.net', 'walton.beahan', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (24, 'schamberger.mattie@example.com', 'roberts.haskell', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (25, 'daphney68@example.org', 'dexter98', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (26, 'drake40@example.net', 'edwina.auer', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (27, 'turcotte.ella@example.org', 'taylor.bernier', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (28, 'schuster.irwin@example.net', 'antonetta.kovacek', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (29, 'esperanza.gulgowski@example.org', 'wellington66', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES (30, 'kelly.wunsch@example.com', 'hammes.kane', '$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
