DROP DATABASE Todolist;
CREATE DATABASE IF NOT EXISTS Todolist;

USE Todolist;

DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User`(
	Id					TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    FullName			NVARCHAR(100) NOT NULL,
    UserName			VARCHAR(12) NOT NULL UNIQUE,
    `PassWord`			VARCHAR(1000) NOT NULL
);

DROP TABLE IF EXISTS Task;
CREATE TABLE IF NOT EXISTS Task(
	Id					MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Title				NVARCHAR(100) NOT NULL,
    Content				NVARCHAR(1000) NOT NULL,
    `Status`			ENUM('OPEN','DONE','INPROGRESS') DEFAULT 'OPEN',
    Creator				TINYINT UNSIGNED,
    
    FOREIGN KEY (Creator) REFERENCES `User`(Id)
);

INSERT INTO `User`(FullName, UserName, `PassWord`) VALUES	('Dương Trọng Thắng','thangduong','123456'),
															('Dương Doãn Hùng','hung','123456'),
                                                            ('Trần Việt Hoàng','hoangngu','123456'),
                                                            ('Ngô Bá Khá','khabanh','123456'),
                                                            ('Huấn Hoa Hồng','huanrose','123456');
                                                            
INSERT INTO Task(Title,Content,Creator) VALUES		('Task 1','fafd','1'),
													('Task 2','afsdas','2'),
													('Task 3','affd','3'),
													('Task 4','gffff','4'),
													('Task 5','asdsad','5');