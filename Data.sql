-- Saudi Tennis Federation Data Warehouse 
-- For Oracle LiveSQL
-- Created on February 27, 2025

-- Mohammed Al-Nuseirat
-- @MohaNuseirat



CREATE TABLE Referees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_referees INT NOT NULL
);

CREATE TABLE Coaches (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_coaches INT NOT NULL
);

CREATE TABLE Players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_players INT NOT NULL
);

CREATE TABLE Clubs_Academies (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type ENUM('Club', 'Academy') NOT NULL
);
INSERT INTO Referees (total_referees) VALUES (216);
INSERT INTO Coaches (total_coaches) VALUES (355);
INSERT INTO Players (total_players) VALUES (2551);
INSERT INTO Clubs_Academies (id, name, type) VALUES (1, ' الانوار', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (2, ' احد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (3, ' الابتسام', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (4, ' الاتحاد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (5, ' الاتفاق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (6, ' الاخدود', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (7, ' الارطاوي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (8, ' الاعتماد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (9, ' الاغر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (10, ' الانصار', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (11, ' الانطلاق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (12, ' الاهلي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (13, ' الأسياح', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (14, ' الباطن', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (15, ' البدائع', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (16, ' البكيرية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (17, ' الترجي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (18, ' التعاون', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (19, ' التقدم', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (20, ' التهامي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (21, ' الثقبة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (22, ' الجبيل', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (23, ' الجزيرة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (24, ' الجندل', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (25, ' الجواء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (26, ' الجيل', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (27, ' الحجاز', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (28, ' الحريق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (29, ' الحزم', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (30, ' الحمادة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (31, ' الحوراء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (32, ' الخبراء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (33, ' الخلود', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (34, ' الخليج', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (35, ' الخويلدية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (36, ' الدرع', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (37, ' الدرعية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (38, ' الرائد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (39, ' الروضة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (40, ' الرياض', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (41, ' الريان', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (42, ' الزلفي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (43, ' الزيتون', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (44, ' السد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (45, ' السر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (46, ' السروات', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (47, ' السلام', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (48, ' السلمية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (49, ' الشباب', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (50, ' الشروق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (51, ' الشعلة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (52, ' الشعيب', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (53, ' الصحاري', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (54, ' الصفا', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (55, ' الصقر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (56, ' الصواري', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (57, ' الطائي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (58, ' الطرف', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (59, ' العدالة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (60, ' العربي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (61, ' العرض', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (62, ' العروبة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (63, ' العرين', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (64, ' العلا', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (65, ' العمران', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (66, ' العين', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (67, ' العيون', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (68, ' الغزوة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (69, ' الغوطة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (70, ' الفاروق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (71, ' الفتح', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (72, ' الفرسان', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (73, ' الفيحاء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (74, ' الفيصلي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (75, ' القادسية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (76, ' القارة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (77, ' القلعة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (78, ' القوارة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (79, ' القوس', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (80, ' القيصومة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (81, ' اللواء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (82, ' الليث', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (83, ' المجد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (84, ' المجزل', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (85, ' المحيط', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (86, ' المزاحمية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (87, ' المصيف', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (88, ' النجمة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (89, ' النجوم', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (90, ' النصر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (91, ' النهضة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (92, ' الهداية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (93, ' الهدى', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (94, ' الهلال', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (95, ' الهلالية', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (96, ' الوادي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (97, ' الوحدة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (98, ' الوشم', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (99, ' الوطن', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (100, ' الوطني', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (101, ' اليرموك', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (102, ' أبها', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (103, ' أشيقر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (104, ' بيش', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (105, ' تيماء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (106, ' جبة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (107, ' جدة ', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (108, ' جرش', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (109, ' حراء', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (110, ' حطين', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (111, ' خيبر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (112, ' رأس  تنورة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (113, ' رضوي', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (114, ' ساجر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (115, ' سدوس', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (116, ' سدير', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (117, ' سميرا', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (118, ' ضمك', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (119, ' طبرجل', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (120, ' طويق', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (121, ' عرعر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (122, ' عفيف', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (123, ' عكاظ', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (124, ' فيد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (125, ' فيفا', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (126, ' قفار', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (127, ' كميت', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (128, ' مصدة', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (129, ' مضر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (130, ' نجد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (131, ' نيوم', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (132, ' هجر', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (133, 'تنس بوينت', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (134, 'فايترز', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (135, 'ماتش بوينت', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (136, 'ان تنس', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (137, 'DJTA - اكاديمية الظهران أرامكو  ', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (138, 'سماش', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (139, 'دي كيو DQ', 'Academy');
INSERT INTO Clubs_Academies (id, name, type) VALUES (140, 'البحر الأحمر', 'Academy');
