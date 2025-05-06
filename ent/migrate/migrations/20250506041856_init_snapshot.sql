-- Create "cars" table
CREATE TABLE `cars` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `model` text NOT NULL, `registered_at` datetime NOT NULL, `user_cars` integer NULL, CONSTRAINT `cars_users_cars` FOREIGN KEY (`user_cars`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL);
-- Create "groups" table
CREATE TABLE `groups` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `name` text NOT NULL);
-- Create "users" table
CREATE TABLE `users` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `age` integer NOT NULL, `name` text NOT NULL DEFAULT 'unknown');
