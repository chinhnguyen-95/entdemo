-- Modify "users" table
ALTER TABLE `users` ADD CONSTRAINT `users_chk_1` CHECK (`age` >= 18);
