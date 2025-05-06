-- Modify "cars" table
ALTER TABLE `cars` MODIFY COLUMN `model` enum('TOYOTA','HONDA','BMW') NOT NULL DEFAULT "TOYOTA";
