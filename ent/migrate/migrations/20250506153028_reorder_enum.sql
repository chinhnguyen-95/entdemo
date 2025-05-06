-- Modify "cars" table
ALTER TABLE `cars` MODIFY COLUMN `model` enum('HONDA','TOYOTA') NOT NULL DEFAULT "TOYOTA";
