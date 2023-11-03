-- AlterTable
ALTER TABLE `property` MODIFY `property_status` ENUM('AVAILABLE', 'BOOKED', 'UNAVAILABLE') NOT NULL DEFAULT 'UNAVAILABLE';

-- AlterTable
ALTER TABLE `user` MODIFY `gender` ENUM('MALE', 'FEMALE') NULL DEFAULT 'MALE';