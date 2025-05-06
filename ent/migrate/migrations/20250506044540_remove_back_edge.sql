-- Disable the enforcement of foreign-keys constraints
PRAGMA foreign_keys = off;
-- Create "new_users" table
CREATE TABLE `new_users` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `age` integer NOT NULL, `name` text NOT NULL DEFAULT 'unknown', `group_users` integer NULL, CONSTRAINT `users_groups_users` FOREIGN KEY (`group_users`) REFERENCES `groups` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL);
-- Copy rows from old table "users" to new temporary table "new_users"
INSERT INTO `new_users` (`id`, `age`, `name`) SELECT `id`, `age`, `name` FROM `users`;
-- Drop "users" table after copying rows
DROP TABLE `users`;
-- Rename temporary table "new_users" to "users"
ALTER TABLE `new_users` RENAME TO `users`;
-- Drop "group_users" table
DROP TABLE `group_users`;
-- Enable back the enforcement of foreign-keys constraints
PRAGMA foreign_keys = on;
