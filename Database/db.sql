/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : info5100

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 08/12/2023 15:31:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blood_pressure
-- ----------------------------
DROP TABLE IF EXISTS `blood_pressure`;
CREATE TABLE `blood_pressure`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `time` time NULL DEFAULT NULL,
  `systolic_pressure` int NULL DEFAULT NULL,
  `diastolic_pressure` int NULL DEFAULT NULL,
  `heart_beats` int NULL DEFAULT NULL,
  `avg_SP` decimal(5, 2) NULL DEFAULT NULL,
  `avg_DP` decimal(5, 2) NULL DEFAULT NULL,
  `avg_HB` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blood_pressure
-- ----------------------------
INSERT INTO `blood_pressure` VALUES (1, '2023-01-01', '09:00:00', 80, 50, 80, 80.00, 50.00, 80.00);
INSERT INTO `blood_pressure` VALUES (2, '2023-01-01', '10:00:00', 85, 55, 85, 80.00, 50.00, 80.00);
INSERT INTO `blood_pressure` VALUES (3, '2023-01-01', '11:00:00', 90, 60, 90, 82.50, 52.50, 82.50);
INSERT INTO `blood_pressure` VALUES (4, '2023-01-02', '09:00:00', 82, 52, 82, 82.00, 52.00, 82.00);
INSERT INTO `blood_pressure` VALUES (5, '2023-01-02', '10:00:00', 88, 58, 88, 82.00, 52.00, 82.00);
INSERT INTO `blood_pressure` VALUES (6, '2023-01-02', '11:00:00', 92, 62, 92, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (7, '2023-01-03', '09:00:00', 84, 54, 84, 84.00, 54.00, 84.00);
INSERT INTO `blood_pressure` VALUES (8, '2023-01-03', '10:00:00', 86, 56, 86, 84.00, 54.00, 84.00);
INSERT INTO `blood_pressure` VALUES (9, '2023-01-03', '11:00:00', 94, 64, 94, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (10, '2023-01-04', '09:00:00', 81, 51, 81, 81.00, 51.00, 81.00);
INSERT INTO `blood_pressure` VALUES (11, '2023-01-04', '10:00:00', 87, 57, 87, 81.00, 51.00, 81.00);
INSERT INTO `blood_pressure` VALUES (12, '2023-01-04', '11:00:00', 93, 63, 93, 84.00, 54.00, 84.00);
INSERT INTO `blood_pressure` VALUES (13, '2023-01-05', '09:00:00', 83, 53, 83, 83.00, 53.00, 83.00);
INSERT INTO `blood_pressure` VALUES (14, '2023-01-05', '10:00:00', 89, 59, 89, 83.00, 53.00, 83.00);
INSERT INTO `blood_pressure` VALUES (15, '2023-01-05', '11:00:00', 91, 61, 91, 86.00, 56.00, 86.00);
INSERT INTO `blood_pressure` VALUES (16, '2023-01-06', '09:00:00', 85, 55, 85, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (17, '2023-01-06', '10:00:00', 88, 58, 88, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (18, '2023-01-06', '11:00:00', 92, 62, 92, 86.50, 56.50, 86.50);
INSERT INTO `blood_pressure` VALUES (19, '2023-01-07', '09:00:00', 87, 57, 87, 87.00, 57.00, 87.00);
INSERT INTO `blood_pressure` VALUES (20, '2023-01-07', '10:00:00', 86, 56, 86, 87.00, 57.00, 87.00);
INSERT INTO `blood_pressure` VALUES (21, '2023-01-07', '11:00:00', 94, 64, 94, 86.50, 56.50, 86.50);
INSERT INTO `blood_pressure` VALUES (22, '2023-01-08', '09:00:00', 84, 54, 84, 84.00, 54.00, 84.00);
INSERT INTO `blood_pressure` VALUES (23, '2023-01-08', '10:00:00', 85, 55, 85, 84.00, 54.00, 84.00);
INSERT INTO `blood_pressure` VALUES (24, '2023-01-08', '11:00:00', 93, 63, 93, 84.50, 54.50, 84.50);
INSERT INTO `blood_pressure` VALUES (25, '2023-01-09', '09:00:00', 82, 52, 82, 82.00, 52.00, 82.00);
INSERT INTO `blood_pressure` VALUES (26, '2023-01-09', '10:00:00', 87, 57, 87, 82.00, 52.00, 82.00);
INSERT INTO `blood_pressure` VALUES (27, '2023-01-09', '11:00:00', 91, 61, 91, 84.50, 54.50, 84.50);
INSERT INTO `blood_pressure` VALUES (28, '2023-01-10', '09:00:00', 81, 51, 81, 81.00, 51.00, 81.00);
INSERT INTO `blood_pressure` VALUES (29, '2023-01-10', '10:00:00', 89, 59, 89, 81.00, 51.00, 81.00);
INSERT INTO `blood_pressure` VALUES (30, '2023-01-10', '11:00:00', 92, 62, 92, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (31, '2023-01-11', '09:00:00', 83, 53, 83, 83.00, 53.00, 83.00);
INSERT INTO `blood_pressure` VALUES (32, '2023-01-11', '10:00:00', 88, 58, 88, 83.00, 53.00, 83.00);
INSERT INTO `blood_pressure` VALUES (33, '2023-01-11', '11:00:00', 94, 64, 94, 85.50, 55.50, 85.50);
INSERT INTO `blood_pressure` VALUES (34, '2023-01-12', '09:00:00', 86, 56, 86, 86.00, 56.00, 86.00);
INSERT INTO `blood_pressure` VALUES (35, '2023-01-12', '10:00:00', 85, 55, 85, 86.00, 56.00, 86.00);
INSERT INTO `blood_pressure` VALUES (36, '2023-01-12', '11:00:00', 93, 63, 93, 85.50, 55.50, 85.50);
INSERT INTO `blood_pressure` VALUES (37, '2023-01-13', '09:00:00', 87, 57, 87, 87.00, 57.00, 87.00);
INSERT INTO `blood_pressure` VALUES (38, '2023-01-13', '10:00:00', 86, 56, 86, 87.00, 57.00, 87.00);
INSERT INTO `blood_pressure` VALUES (39, '2023-01-13', '11:00:00', 92, 62, 92, 86.50, 56.50, 86.50);
INSERT INTO `blood_pressure` VALUES (40, '2023-01-14', '09:00:00', 85, 55, 85, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (41, '2023-01-14', '10:00:00', 88, 58, 88, 85.00, 55.00, 85.00);
INSERT INTO `blood_pressure` VALUES (42, '2023-01-14', '11:00:00', 91, 61, 91, 86.50, 56.50, 86.50);

-- ----------------------------
-- Triggers structure for table blood_pressure
-- ----------------------------
DROP TRIGGER IF EXISTS `calculate_average`;
delimiter ;;
CREATE TRIGGER `calculate_average` BEFORE INSERT ON `blood_pressure` FOR EACH ROW BEGIN
    DECLARE total_high DECIMAL(10,2);
    DECLARE total_low DECIMAL(10,2);
    DECLARE total_heart DECIMAL(10,2);
    DECLARE total_records INT;

    -- Calculate total values for the current date
    SELECT SUM(systolic_pressure), SUM(diastolic_pressure), SUM(heart_beats), COUNT(*)
    INTO total_high, total_low, total_heart, total_records
    FROM blood_pressure
    WHERE date = NEW.date;

    -- Set the average values for the current row
    IF total_records > 0 THEN
        SET NEW.avg_SP = total_high / total_records;
        SET NEW.avg_DP = total_low / total_records;
        SET NEW.avg_HB = total_heart / total_records;
    ELSE
        -- Set initial averages if there are no previous records for the day
        SET NEW.avg_SP = NEW.systolic_pressure;
        SET NEW.avg_DP = NEW.diastolic_pressure;
        SET NEW.avg_HB = NEW.heart_beats;
    END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
