-- AlterTable
ALTER TABLE `admin` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CLERK') NOT NULL DEFAULT 'ADMIN';

-- AlterTable
ALTER TABLE `clerk` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CLERK') NOT NULL DEFAULT 'CLERK';

-- AlterTable
ALTER TABLE `forum` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CLERK') NOT NULL DEFAULT 'FORUM';

-- AlterTable
ALTER TABLE `normal` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CLERK') NOT NULL DEFAULT 'NORMAL';

-- CreateTable
CREATE TABLE `approver` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CLERK') NOT NULL DEFAULT 'APPROVER',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `approver_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `approver` ADD CONSTRAINT `approver_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
