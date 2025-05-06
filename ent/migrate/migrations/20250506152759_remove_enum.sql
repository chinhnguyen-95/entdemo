-- Modify "cars" table
ALTER TABLE `cars` MODIFY COLUMN `model` enum('TOYOTA','HONDA') NOT NULL DEFAULT "TOYOTA";
