--
-- SETUP
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test`;
USE `test`;

--
-- DDL
--

DROP TABLE IF EXISTS `bike`;

CREATE TABLE `bike`(
    `id` INT NOT NULL,
    `city_id` VARCHAR(10) NOT NULL,
    `status_id` INT NOT NULL,
    `geometry` VARCHAR(150) NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `bike`
    (`id`, `city_id`, `status_id`, `geometry`)
VALUES
    (1, 1, 1, '...'),
    (2, 1, 1, '...'),
    (3, 1, 1, '...'),
    (4, 1, 1, '...'),
    (5, 1, 1, '...'),
    (6, 1, 1, '...'),
    (7, 1, 1, '...'),
    (8, 1, 1, '...'),
    (9, 1, 1, '...'),
    (10, 1, 1, '...'),
    (11, 2, 1, '...'),
    (12, 2, 1, '...'),
    (13, 2, 1, '...'),
    (14, 2, 1, '...'),
    (15, 2, 1, '...'),
    (16, 2, 1, '...'),
    (17, 2, 1, '...'),
    (18, 2, 1, '...'),
    (19, 2, 1, '...'),
    (20, 2, 1, '...'),
    (21, 2, 1, '...'),
    (22, 2, 1, '...'),
    (23, 2, 1, '...'),
    (24, 2, 1, '...'),
    (25, 2, 1, '...'),
    (26, 2, 1, '...'),
    (27, 2, 1, '...'),
    (28, 2, 1, '...'),
    (29, 2, 1, '...')
;
