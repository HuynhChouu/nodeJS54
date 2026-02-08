-- tạo database
CREATE DATABASE cyber_community

-- xoá database
DROP DATABASE demo_1

SELECT * 
FROM `Users`

SELECT `id`, `email`, `fullName`
FROM `Users`
WHERE `id` = 5

INSERT INTO Foods (`name`, `description`)
VALUES 			  ("gỏi gà", "được làm từ gà"),
				  ("gỏi vịt", "được làm từ vịt"),
				  ("gỏi heo", "được làm từ heo"),
				  ("gỏi bò", "được làm từ bò"),
				  ("gỏi dê", "được làm từ dê")
				  
DELETE FROM Foods
WHERE `id` IN (1,2,3)

DROP TABLE Foods

CREATE TABLE Foods (`id` INT,
					`description` VARCHAR(255))
					
ALTER TABLE Foods 
RENAME COLUMN id TO name

DROP TABLE Foods 

CREATE TABLE Foods (`name` VARCHAR(255),
					`description` VARCHAR(255))

DROP TABLE Foods

CREATE TABLE Foods (
					`id` INT PRIMARY KEY AUTO_INCREMENT,
					`name` VARCHAR(255),
					`description` VARCHAR(255))
					
DROP TABLE Foods	

CREATE TABLE Foods (
					`id` INT PRIMARY KEY AUTO_INCREMENT,
					`name` VARCHAR(255),
					`description` VARCHAR(255));
					

 INSERT INTO Foods (`name`, `description`)
VALUES 			  ("gỏi gà", "được làm từ gà"),
				  ("gỏi vịt", "được làm từ vịt"),
				  ("gỏi heo", "được làm từ heo"),
				  ("gỏi bò", "được làm từ bò"),
				  ("gỏi dê", "được làm từ dê")
				  
-- So sánh: Cùng kiểu dữ liệu mới có thể so sánh				  
-- Các mối quan hệ trong table
-- ONE to ONE: 1 hàng trong bảng A sẽ chỉ liên kết với 1 hàng trong bảng B
-- ONE to MANY: 1 hàng trong bảng A có thể liên kết với nhiều hàng trong bảng B
-- MANY to MANY: nhiều hàng trong bảng A có thể liên kết với nhiều hàng trong bảng B

CREATE TABLE Orders (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	
	`userId` INT,	
	`foodId` INT, 		
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`id`),
	FOREIGN KEY (`foodId`) REFERENCES `Foods`(`id`)
)

-- Khi khách hàng mua hàng
INSERT INTO `Orders` (`userId`, `foodId`) VALUES
					 (1,2),
				     (2,5),
				     (3,2),
					 (4,1),
					 (5,4)

-- INNER JOIN **
SELECT * 
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`
INNER JOIN `Foods` ON `Orders`.`foodId` = `Foods`.`id`

-- LEFT JOIN/RIGHT JOIN: tìm kiếm người chưa hành động (tuỳ dữ liệu)
SELECT *
FROM `Users`
LEFT JOIN `Orders` ON `Orders`.`userId` = `Users`.`id`

-- CROSS JOIN 
SELECT *
FROM `Orders`
CROSS JOIN `Users`

-- Giải bài tập

-- Tìm người đã đặt hàng nhiều nhất
-- Phân tích: 
	-- Có phát sinh mua hàng => xuất hiện trong bảng Orders
	-- GROUP BY: Nhóm những user giống nhau lại rồi đếm tần suất xuất hiện
		-- COUNT(), MAX(), MIN(), AVG()
	-- ORDER BY: Sắp xếp giảm dần
	--LIMIT 1, lấy người đầu tiên => done
	
-- B1: Lấy tất cả bảng Orders
SELECT *
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`

-- B2: GROUP BY: Thống kê
SELECT `userId`, `Users`.`id`, `email`, `fullName`
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`
GROUP BY `userId`

-- B3: Thống kê số lượng nhóm được COUNT()
SELECT COUNT(`userId`) as `Số lần mua hàng`,`Users`.`id`, `email`, `fullName`
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`
GROUP BY `userId`

-- B4: Sắp xếp từ lớn đến bé ORDER BY () ASC: Tăng dần|DESC: Giảm dần
SELECT COUNT(`userId`) as `Số lần mua hàng`,`Users`.`id`, `email`, `fullName`
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`
GROUP BY `userId`
ORDER BY `Số lần mua hàng` DESC

-- B5: Lấy người đầu tiên
SELECT COUNT(`userId`) as `Số lần mua hàng`,`Users`.`id`, `email`, `fullName`
FROM `Orders`
INNER JOIN `Users` ON `Orders`.`userId` = `Users`.`id`
GROUP BY `userId`
ORDER BY `Số lần mua hàng` DESC
LIMIT 1 -- DÙNG TRONG PHÂN TRANG


-- Template Table (Mẫu => Tham khảo)
CREATE TABLE IF NOT EXISTS `Orders` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
	
	`userId` INT,	
	`foodId` INT, 		
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`id`),
	FOREIGN KEY (`foodId`) REFERENCES `Food`(`id`),
	
    /* mặc định luôn có */
    `deletedBy` INT NOT NULL DEFAULT 0,
    `isDeleted` TINYINT(1) NOT NULL DEFAULT 0,
    `deletedAt` TIMESTAMP NULL DEFAULT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
        ON UPDATE CURRENT_TIMESTAMP
)
-- Server khi lưu, thời gian sẽ mặc định lưu là +0 GMT

CREATE TABLE IF NOT EXISTS `Users` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`fullName` VARCHAR(255),
	`email` VARCHAR(255),
	`avatar` VARCHAR(255),
	`totpSecret` INT,
	`googleId` INT,
	`password` VARCHAR(255),
	
	 /* mặc định luôn có */
    `deletedBy` INT NOT NULL DEFAULT 0,
    `isDeleted` TINYINT(1) NOT NULL DEFAULT 0,
    `deletedAt` TIMESTAMP NULL DEFAULT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
        ON UPDATE CURRENT_TIMESTAMP
)

CREATE TABLE IF NOT EXISTS `Articles` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	-- mặc định luôn luôn có
	
	`title` VARCHAR(255),
	`content` TEXT,
	`imageUrl` VARCHAR(255),
	`views` INT NOT NULL DEFAULT 0,
	`userId` INT,
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`id`),
	
	-- mặc định luôn luôn có
    `deletedBy` INT NOT NULL DEFAULT 0,
    `isDeleted` TINYINT(1) NOT NULL DEFAULT 0,
    `deletedAt` TIMESTAMP NULL DEFAULT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
        ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `Users` (`email`, `fullName`) VALUES ("example@gmail.com", "example")


INSERT INTO
	`Articles` (
		`content`,
		`imageUrl`,
		`views`,
		`userId`,
		`createdAt`,
		`updatedAt`
	)
VALUES
	(
		'Content about learning NextJS...',
		'https://picsum.photos/seed/1/600/400',
		15,
		1,
		'2024-01-01 08:00:00',
		'2024-01-01 08:00:00'
	),
	(
		'Content about mastering React Query...',
		'https://picsum.photos/seed/2/600/400',
		32,
		1,
		'2024-01-02 09:00:00',
		'2024-01-02 09:00:00'
	),
	(
		'Content about JavaScript tips...',
		'https://picsum.photos/seed/3/600/400',
		45,
		1,
		'2024-01-03 10:00:00',
		'2024-01-03 10:00:00'
	),
	(
		'Comparison content...',
		'https://picsum.photos/seed/4/600/400',
		27,
		1,
		'2024-01-04 11:00:00',
		'2024-01-04 11:00:00'
	),
	(
		'Content about TypeScript...',
		'https://picsum.photos/seed/5/600/400',
		12,
		1,
		'2024-01-05 12:00:00',
		'2024-01-05 12:00:00'
	),
	(
		'Content about SQL joins...',
		'https://picsum.photos/seed/6/600/400',
		8,
		1,
		'2024-01-06 13:00:00',
		'2024-01-06 13:00:00'
	),
	(
		'Extensions content...',
		'https://picsum.photos/seed/7/600/400',
		60,
		1,
		'2024-01-07 14:00:00',
		'2024-01-07 14:00:00'
	),
	(
		'Content about React optimization...',
		'https://picsum.photos/seed/8/600/400',
		33,
		1,
		'2024-01-08 15:00:00',
		'2024-01-08 15:00:00'
	),
	(
		'Content about API design...',
		'https://picsum.photos/seed/9/600/400',
		18,
		1,
		'2024-01-09 16:00:00',
		'2024-01-09 16:00:00'
	),
	(
		'Predictions about web development...',
		'https://picsum.photos/seed/10/600/400',
		21,
		1,
		'2024-01-10 17:00:00',
		'2024-01-10 17:00:00'
	);