DROP TABLE IF EXISTS Rates;
DROP TABLE IF EXISTS Likes;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Foods;
DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS `Users` (
	`userId` INT PRIMARY KEY AUTO_INCREMENT,
	`fullName` VARCHAR(255),
	`email` VARCHAR(255),
	`password` VARCHAR(255)
);

INSERT INTO `Users` (`fullName`, `email`, `password`) VALUES
('Nguyen Van An','an.nguyen@gmail.com','123'),
('Tran Thi Bich','bich.tran@gmail.com','123'),
('Le Hoang Minh','minh.le@gmail.com','123'),
('Pham Gia Bao','bao.pham@gmail.com','123'),
('Vo Thanh Tung','tung.vo@gmail.com','123'),
('Doan Quoc Huy','huy.doan@gmail.com','123'),
('Huynh Gia Han','han.huynh@gmail.com','123'),
('Bui Thanh Dat','dat.bui@gmail.com','123'),
('Dang Minh Quan','quan.dang@gmail.com','123'),
('Ngo Phuong Linh','linh.ngo@gmail.com','123'),
('Ly Tuan Kiet','kiet.ly@gmail.com','123'),
('Duong Ngoc Anh','anh.duong@gmail.com','123'),
('Cao Minh Tam','tam.cao@gmail.com','123'),
('Hoang Kim Ngan','ngan.hoang@gmail.com','123'),
('Truong Duc Thinh','thinh.truong@gmail.com','123'),
('Phan Bao Chau','chau.phan@gmail.com','123'),
('Lam Gia Huy','huy.lam@gmail.com','123'),
('Nguyen Tuan Anh','tuananh.nguyen@gmail.com','123'),
('Tran Ngoc Mai','mai.tran@gmail.com','123'),
('Le Bao Ngoc','ngoc.le@gmail.com','123'),
('Pham Minh Tri','tri.pham@gmail.com','123'),
('Vo Thanh Nhan','nhan.vo@gmail.com','123'),
('Doan Minh Duc','duc.doan@gmail.com','123'),
('Huynh Phuc An','an.huynh@gmail.com','123'),
('Bui Gia Linh','linh.bui@gmail.com','123'),
('Dang Thanh Tam','tam.dang@gmail.com','123'),
('Ngo Gia Bao','bao.ngo@gmail.com','123'),
('Ly Minh Thu','thu.ly@gmail.com','123'),
('Duong Thanh Ha','ha.duong@gmail.com','123'),
('Cao Gia Hieu','hieu.cao@gmail.com','123'),
('Hoang Tuan Khang','khang.hoang@gmail.com','123'),
('Truong Gia Bao','bao.truong@gmail.com','123'),
('Phan Minh Khoa','khoa.phan@gmail.com','123'),
('Lam Thanh Vy','vy.lam@gmail.com','123'),
('Nguyen Minh Anh','anh.nguyen2@gmail.com','123'),
('Tran Gia Han','han.tran@gmail.com','123'),
('Le Thanh Tung','tung.le@gmail.com','123'),
('Pham Gia Huy','huy.pham@gmail.com','123'),
('Vo Minh Thu','thu.vo@gmail.com','123'),
('Doan Thanh Truc','truc.doan@gmail.com','123'),
('Huynh Minh Chau','chau.huynh@gmail.com','123'),
('Bui Gia Bao','bao.bui@gmail.com','123'),
('Dang Ngoc Han','han.dang@gmail.com','123'),
('Ngo Thanh Vy','vy.ngo@gmail.com','123'),
('Ly Gia Huy','huy.ly@gmail.com','123'),
('Duong Minh Tri','tri.duong@gmail.com','123'),
('Cao Thanh Ngan','ngan.cao@gmail.com','123'),
('Hoang Gia Linh','linh.hoang@gmail.com','123'),
('Truong Minh Quan','quan.truong@gmail.com','123'),
('Phan Gia Han','han.phan@gmail.com','123'),
('Lam Minh Dat','dat.lam@gmail.com','123'),
('Nguyen Gia Hieu','hieu.nguyen@gmail.com','123'),
('Tran Minh Kiet','kiet.tran@gmail.com','123'),
('Le Gia Nhan','nhan.le@gmail.com','123'),
('Pham Thanh Linh','linh.pham@gmail.com','123'),
('Vo Gia Bao','bao.vo@gmail.com','123'),
('Doan Minh Han','han.doan@gmail.com','123'),
('Huynh Thanh Tam','tam.huynh@gmail.com','123'),
('Bui Minh Hieu','hieu.bui@gmail.com','123'),
('Dang Gia Ngan','ngan.dang@gmail.com','123'),
('Ngo Minh Dat','dat.ngo@gmail.com','123'),
('Ly Thanh Vy','vy.ly@gmail.com','123'),
('Duong Gia Bao','bao.duong@gmail.com','123'),
('Cao Minh Han','han.cao@gmail.com','123'),
('Hoang Thanh Kiet','kiet.hoang@gmail.com','123'),
('Truong Gia Vy','vy.truong@gmail.com','123'),
('Phan Thanh An','an.phan@gmail.com','123'),
('Lam Gia Tam','tam.lam@gmail.com','123'),
('Nguyen Thanh Hieu','hieu.nguyen2@gmail.com','123'),
('Tran Gia Dat','dat.tran@gmail.com','123'),
('Le Minh Han','han.le@gmail.com','123'),
('Pham Gia Vy','vy.pham@gmail.com','123'),
('Vo Thanh Khoa','khoa.vo@gmail.com','123'),
('Doan Gia Hieu','hieu.doan@gmail.com','123'),
('Huynh Minh Vy','vy.huynh@gmail.com','123'),
('Bui Thanh Han','han.bui@gmail.com','123'),
('Dang Gia Linh','linh.dang@gmail.com','123'),
('Ngo Minh Bao','bao.ngo2@gmail.com','123'),
('Ly Gia Han','han.ly@gmail.com','123'),
('Duong Thanh Bao','bao.duong2@gmail.com','123'),
('Cao Gia Vy','vy.cao@gmail.com','123'),
('Hoang Minh Dat','dat.hoang@gmail.com','123'),
('Truong Thanh Han','han.truong@gmail.com','123'),
('Phan Gia Bao','bao.phan@gmail.com','123'),
('Lam Thanh Han','han.lam@gmail.com','123'),
('Nguyen Gia Vy','vy.nguyen@gmail.com','123'),
('Tran Thanh Bao','bao.tran@gmail.com','123'),
('Le Gia Hieu','hieu.le@gmail.com','123'),
('Pham Minh Vy','vy.pham2@gmail.com','123'),
('Vo Gia Han','han.vo@gmail.com','123'),
('Doan Thanh Bao','bao.doan@gmail.com','123'),
('Huynh Gia Vy','vy.huynh2@gmail.com','123'),
('Bui Gia Han','han.bui2@gmail.com','123'),
('Dang Thanh Bao','bao.dang@gmail.com','123'),
('Ngo Gia Vy','vy.ngo2@gmail.com','123'),
('Ngo Gia Han','han.ngo2@gmail.com','123'),
('Nguyen An Nhien','anan2@gmail.com','123'),
('Phung Gia An','giaan@gmail.com','123'),
('Nguyen Hung Cuong','cuongnguyen@gmail.com','123'),
('Lam Nhat Hao','haohao@gmail.com','123');

CREATE TABLE IF NOT EXISTS `Restaurants` (
	`resId` INT PRIMARY KEY AUTO_INCREMENT,
	`resName` VARCHAR(255),
	`image` VARCHAR(255),
	`desc` VARCHAR(255) DEFAULT "Chua co thong tin"
);

INSERT INTO `Restaurants` (`resName`, `image`, `desc`) VALUES
('Nhà hàng Phở 24', 'pho24.jpg', 'Chuyên phở truyền thống'),
('Bún Chả Hà Nội', 'buncha.jpg', 'Bún chả chuẩn vị Hà Nội'),
('Cơm Tấm Sài Gòn', 'comtam.jpg', 'Cơm tấm sườn bì chả'),
('Bánh Mì Việt', 'banhmi.jpg', 'Bánh mì thịt đặc biệt'),
('Gỏi Cuốn Quán', 'goicuon.jpg', 'Gỏi cuốn tươi ngon'),
('Bún Bò Huế', 'bunbo.jpg', 'Bún bò đậm vị Huế'),
('Mì Quảng Miền Trung', 'miquang.jpg', 'Mì quảng chính gốc'),
('Hủ Tiếu Nam Vang', 'hutieu.jpg', 'Hủ tiếu nước ngọt thanh'),
('Lẩu Thái Hải Sản', 'lauthai.jpg', 'Lẩu thái chua cay'),
('Cơm Chiên Hải Sản', 'comchien.jpg', 'Cơm chiên hải sản thơm ngon'),
('Quán Nhậu 123', 'quannhau.jpg', 'Món nhậu đa dạng'),
('Nhà Hàng Gia Đình', 'giadinh.jpg', 'Món ăn gia đình'),
('Quán Nướng BBQ', 'bbq.jpg', 'Đồ nướng hấp dẫn'),
('Quán Chay An Lạc', 'chay.jpg', 'Món chay thanh đạm'),
('Hải Sản Biển Đông', 'haisan.jpg', 'Hải sản tươi sống'),
('Quán Ăn Vặt', 'anvat.jpg', 'Ăn vặt ngon rẻ'),
('Café Sáng', 'cafe.jpg', 'Café và điểm tâm'),
('Trà Sữa House', 'trasua.jpg', 'Trà sữa đa dạng'),
('Quán Cơm Văn Phòng', 'vanphong.jpg', 'Cơm trưa văn phòng'),
('Quán Ăn Đêm', 'andem.jpg', 'Phục vụ ăn đêm');

CREATE TABLE IF NOT EXISTS `Foods` (
	`foodId` INT PRIMARY KEY AUTO_INCREMENT,
	`foodName` VARCHAR(255),
	`image` VARCHAR(255),
	`price` FLOAT(8,2),
	`desc` 	VARCHAR(255) DEFAULT "Chua co thong tin"
);

INSERT INTO `Foods` (`foodName`, `image`, `price`, `desc`) VALUES
('Phở bò tái', 'pho_bo.jpg', 45000, 'Phở bò truyền thống, nước dùng đậm đà'),
('Bún chả Hà Nội', 'bun_cha.jpg', 40000, 'Bún chả thịt nướng ăn kèm rau sống'),
('Cơm tấm sườn bì chả', 'com_tam.jpg', 50000, 'Cơm tấm Sài Gòn với sườn nướng thơm ngon'),
('Bánh mì thịt', 'banh_mi.jpg', 20000, 'Bánh mì giòn rụm kẹp thịt và rau'),
('Gỏi cuốn tôm thịt', 'goi_cuon.jpg', 30000, 'Gỏi cuốn tươi mát chấm nước mắm'),
('Bún bò Huế', 'bun_bo_hue.jpg', 48000, 'Bún bò cay nhẹ, đậm vị Huế'),
('Mì quảng', 'mi_quang.jpg', 42000, 'Mì quảng đặc sản miền Trung'),
('Hủ tiếu Nam Vang', 'hu_tieu.jpg', 38000, 'Hủ tiếu nước ngọt thanh, topping đầy đủ'),
('Cơm chiên hải sản', 'com_chien.jpg', 55000, 'Cơm chiên tơi xốp với hải sản'),
('Lẩu thái hải sản', 'lau_thai.jpg', 120000, 'Lẩu thái chua cay hấp dẫn'),
('Bánh xèo', 'banh_xeo.jpg', 35000, 'Bánh xèo giòn tan, nhân tôm thịt'),
('Chả giò', 'cha_gio.jpg', 30000, 'Chả giò chiên giòn, nhân thịt rau củ'),
('Cá kho tộ', 'ca_kho.jpg', 60000, 'Cá kho đậm đà, ăn kèm cơm trắng'),
('Gà nướng mật ong', 'ga_nuong.jpg', 70000, 'Gà nướng thơm lừng vị mật ong'),
('Bò lúc lắc', 'bo_luc_lac.jpg', 75000, 'Bò xào mềm, ăn kèm khoai tây chiên'),
('Mực xào chua ngọt', 'muc_xao.jpg', 68000, 'Mực tươi xào vị chua ngọt'),
('Canh chua cá', 'canh_chua.jpg', 50000, 'Canh chua thanh mát, cá tươi'),
('Cơm gà xối mỡ', 'com_ga.jpg', 55000, 'Cơm gà da giòn, thịt mềm'),
('Bánh canh cua', 'banh_canh.jpg', 48000, 'Bánh canh sánh, cua nhiều thịt'),
('Trà sữa trân châu', 'tra_sua.jpg', 25000, 'Trà sữa béo thơm, trân châu dai');

CREATE TABLE IF NOT EXISTS `Orders` (
	`userId` INT,
	`foodId` INT,
	`amount` INT,
	`code` 	 VARCHAR(255),
	`arrSubId` VARcHAR(255),
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`userId`),
	FOREIGN KEY (`foodId`) REFERENCES `Foods`(`foodId`)
);

INSERT INTO `Orders` (`userId`, `foodId`, `amount`, `code`, `arrSubId`) VALUES
(1,1,2,'ORD1001','S1,S2'),
(1,5,1,'ORD1001','S3'),
(2,3,1,'ORD1002','S1'),
(3,7,2,'ORD1003','S2'),
(4,2,1,'ORD1004','S1'),
(5,8,3,'ORD1005','S2'),
(6,6,1,'ORD1006','S3'),
(7,4,2,'ORD1007','S1'),
(8,9,1,'ORD1008','S2'),
(1,12,2,'ORD1011','S2'),
(2,15,1,'ORD1012','S3'),
(3,1,2,'ORD1013','S1'),
(4,5,1,'ORD1014','S2'),
(5,3,2,'ORD1015','S3'),
(6,7,1,'ORD1016','S1'),
(7,2,2,'ORD1017','S2'),
(8,6,1,'ORD1018','S3'),
(1,8,2,'ORD1020','S2'),
(1,9,1,'ORD1020','S3'),
(2,10,2,'ORD1021','S1'),
(3,11,1,'ORD1022','S2'),
(4,12,2,'ORD1023','S3'),
(5,13,1,'ORD1024','S1'),
(6,14,2,'ORD1025','S2'),
(7,15,1,'ORD1026','S3'),
(8,16,2,'ORD1027','S1'),
(1,19,1,'ORD1030','S1'),
(2,20,2,'ORD1031','S2'),
(3,1,1,'ORD1032','S3'),
(4,2,2,'ORD1033','S1'),
(5,3,1,'ORD1034','S2'),
(6,4,2,'ORD1035','S3'),
(7,5,1,'ORD1036','S1'),
(8,6,2,'ORD1037','S2'),
(1,8,1,'ORD1039','S1'),
(1,9,2,'ORD1039','S2'),
(2,10,1,'ORD1040','S3'),
(3,11,2,'ORD1041','S1'),
(4,12,1,'ORD1042','S2'),
(5,13,2,'ORD1043','S3'),
(6,14,1,'ORD1044','S1'),
(7,15,2,'ORD1045','S2'),
(8,16,1,'ORD1046','S3'),
(1,19,2,'ORD1049','S3'),
(2,20,1,'ORD1050','S1'),
(3,1,2,'ORD1051','S2'),
(4,2,1,'ORD1052','S3'),
(5,3,2,'ORD1053','S1'),
(6,4,1,'ORD1054','S2'),
(7,5,2,'ORD1055','S3'),
(8,6,1,'ORD1056','S1'),
(1,8,1,'ORD1058','S3'),
(1,9,2,'ORD1058','S1'),
(2,10,1,'ORD1059','S2'),
(3,11,2,'ORD1060','S3'),
(4,12,1,'ORD1061','S1'),
(5,13,2,'ORD1062','S2'),
(6,14,1,'ORD1063','S3'),
(7,15,2,'ORD1064','S1'),
(8,16,1,'ORD1065','S2'),
(1,19,2,'ORD1068','S2'),
(2,20,1,'ORD1069','S3'),
(3,1,2,'ORD1070','S1'),
(4,2,1,'ORD1071','S2'),
(5,3,2,'ORD1072','S3'),
(6,4,1,'ORD1073','S1'),
(7,5,2,'ORD1074','S2'),
(8,6,1,'ORD1075','S3'),
(1,8,1,'ORD1077','S2'),
(1,9,2,'ORD1077','S3'),
(2,10,1,'ORD1078','S1'),
(3,11,2,'ORD1079','S2'),
(4,12,1,'ORD1080','S3');

CREATE TABLE IF NOT EXISTS `Likes` (
	`userId` INT,
	`resId`  INT,
	`dateLike` DATETIME,
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`userId`),
	FOREIGN KEY (`resId`) REFERENCES `Restaurants`(`resId`)
);

INSERT INTO `Likes` (`userId`, `resId`, `dateLike`) VALUES
(2,3,'2026-01-13 08:00:00'),
(2,5,'2026-01-15 08:05:00'),
(2,6,'2026-02-13 08:05:00'),
(2,1,'2026-01-12 08:05:00'),
(3,4,'2026-01-13 08:10:00'),
(3,8,'2026-01-13 08:15:00'),
(4,1,'2026-01-13 08:20:00'),
(4,9,'2026-01-13 08:25:00'),
(6,2,'2026-01-13 08:30:00'),
(6,7,'2026-01-13 08:35:00'),
(7,3,'2026-01-13 08:40:00'),
(7,10,'2026-01-13 08:45:00'),
(8,11,'2026-01-13 09:00:00'),
(8,12,'2026-01-13 09:05:00'),
(9,1,'2026-01-13 09:10:00'),
(9,6,'2026-01-13 09:15:00'),
(10,2,'2026-01-13 09:20:00'),
(10,7,'2026-01-13 09:25:00'),
(10,6,'2026-01-13 09:25:00'),
(11,3,'2026-01-13 09:30:00'),
(11,8,'2026-01-13 09:35:00'),
(12,4,'2026-01-13 09:40:00'),
(12,9,'2026-01-13 09:45:00'),
(12,3,'2026-01-13 09:40:00'),
(12,9,'2026-01-13 09:45:00'),
(12,2,'2026-01-13 09:40:00'),
(12,6,'2026-01-13 09:45:00'),
(13,1,'2026-01-13 10:00:00'),
(13,12,'2026-01-13 10:05:00'),
(14,6,'2026-01-13 10:10:00'),
(14,7,'2026-01-13 10:15:00'),
(15,2,'2026-01-13 10:20:00'),
(15,5,'2026-01-13 10:25:00'),
(16,3,'2026-01-13 10:30:00'),
(16,11,'2026-01-13 10:35:00'),
(17,8,'2026-01-13 10:40:00'),
(17,9,'2026-01-13 10:45:00'),
(18,1,'2026-01-13 11:00:00'),
(18,6,'2026-01-13 11:05:00'),
(18,3,'2026-01-13 11:05:00'),
(18,1,'2026-01-13 11:05:00'),
(19,7,'2026-01-13 11:10:00'),
(19,12,'2026-01-13 11:15:00'),
(20,2,'2026-01-13 11:20:00'),
(20,10,'2026-01-13 11:25:00'),
(20,12,'2026-01-13 11:25:00'),
(21,3,'2026-01-13 11:30:00'),
(21,4,'2026-01-13 11:35:00'),
(22,5,'2026-01-13 11:40:00'),
(22,6,'2026-01-13 11:45:00'),
(23,7,'2026-01-13 12:00:00'),
(23,8,'2026-01-13 12:05:00'),
(24,9,'2026-01-13 12:10:00'),
(24,1,'2026-01-13 12:15:00'),
(25,2,'2026-01-13 12:20:00'),
(25,11,'2026-01-13 12:25:00'),
(25,3,'2026-01-13 12:25:00'),
(25,5,'2026-01-13 12:25:00'),
(26,12,'2026-01-13 12:30:00'),
(26,3,'2026-01-13 12:35:00'),
(26,4,'2026-01-13 12:35:00'),
(27,4,'2026-01-13 12:40:00'),
(27,6,'2026-01-13 12:45:00');

CREATE TABLE IF NOT EXISTS `Rates` (
	`userId` INT,
	`resId`	 INT,
	`amount` INT,
	`dateRate` DATETIME,
	
	FOREIGN KEY (`userId`) REFERENCES `Users`(`userId`),
	FOREIGN KEY (`resId`) REFERENCES `Restaurants`(`resId`)
);

INSERT INTO `Rates` (`userId`, `resId`, `amount`, `dateRate`) VALUES
(1,1,5,'2026-01-03 10:00:00'),
(2,1,4,'2026-01-03 10:05:00'),
(3,6,5,'2026-01-03 10:10:00'),
(4,6,3,'2026-01-03 10:15:00'),
(5,12,4,'2026-01-03 10:20:00'),
(6,12,5,'2026-01-03 10:25:00'),
(7,7,4,'2026-01-03 10:30:00'),
(8,7,5,'2026-01-03 10:35:00'),
(10,6,4,'2026-01-03 10:45:00'),
(1,6,5,'2026-01-04 09:00:00'),
(1,7,4,'2026-01-04 09:10:00'),
(2,12,3,'2026-01-04 09:20:00'),
(3,1,5,'2026-01-04 09:30:00'),
(4,7,4,'2026-01-04 09:40:00'),
(15,1,5,'2026-01-05 11:00:00'),
(16,6,4,'2026-01-05 11:05:00'),
(17,12,5,'2026-01-05 11:10:00'),
(18,7,3,'2026-01-05 11:15:00'),
(19,3,4,'2026-01-05 11:20:00'),
(25,1,5,'2026-01-06 14:00:00'),
(25,6,4,'2026-01-06 14:10:00'),
(25,12,5,'2026-01-06 14:20:00'),
(33,1,4,'2026-01-07 16:00:00'),
(33,7,5,'2026-01-07 16:10:00'),
(33,12,4,'2026-01-07 16:20:00'),
(47,1,5,'2026-01-08 18:00:00'),
(47,6,5,'2026-01-08 18:10:00'),
(60,12,4,'2026-01-08 18:20:00');

SELECT * 
FROM `Likes`


-- Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT COUNT(`Likes`.`resId`) AS `Nhà hàng có lượt like nhiều nhất`, `Likes`.`resId`
FROM `Likes`
GROUP BY `resId`
ORDER BY `Nhà hàng có lượt like nhiều nhất` DESC
LIMIT 2

-- Tìm 5 người like nhà hàng nhiều nhất
SELECT COUNT(`Likes`.`userId`) AS `Người like nhà hàng nhiều nhất`, `userId`
FROM `Likes`
GROUP BY `userId`
ORDER BY `Người like nhà hàng nhiều nhất` DESC
LIMIT 5

SELECT *
FROM `Orders`

-- Tìm người đặt hàng nhiều nhất
SELECT COUNT(`Orders`.`userId`) AS `Người đặt hàng nhiều nhất`, `Orders`.`userId`
FROM `Orders`
GROUP BY `userId`
ORDER BY `Người đặt hàng nhiều nhất` DESC
LIMIT 1

-- Tìm những người không có hoạt động (like, đánh giá, đặt hàng)
SELECT *
FROM `Users`
LEFT JOIN `Orders` ON `Orders`.`userId` = `Users`.`userId`
LEFT JOIN `Likes` ON `Likes`.`userId` = `Users`.`userId`
LEFT JOIN `Rates` ON `Rates`.`userId` = `Users`.`userId`
WHERE Orders.userId IS NULL AND Likes.userId IS NULL AND Rates.userId IS NULL;
