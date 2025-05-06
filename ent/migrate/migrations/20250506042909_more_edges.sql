-- Create "group_users" table
CREATE TABLE `group_users` (`group_id` integer NOT NULL, `user_id` integer NOT NULL, PRIMARY KEY (`group_id`, `user_id`), CONSTRAINT `group_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE, CONSTRAINT `group_users_group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE);
