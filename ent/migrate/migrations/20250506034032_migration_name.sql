-- Create "cars" table
CREATE TABLE `cars` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `model` text NOT NULL, `registered_at` datetime NOT NULL, `user_cars` integer NULL, CONSTRAINT `cars_users_cars` FOREIGN KEY (`user_cars`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL);
-- Create "groups" table
CREATE TABLE `groups` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `name` text NOT NULL);
