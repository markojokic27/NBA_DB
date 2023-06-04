CREATE DATABASE NBA;

CREATE TABLE Tim (
  id     INT PRIMARY KEY,
  ime     VARCHAR(30)
)
CREATE TABLE Igrac (
  id     INT PRIMARY KEY,
  ime     VARCHAR(30),
	IdTim INT REFERENCES Tim(Id)
)
CREATE TABLE Trener (
  id     INT PRIMARY KEY,
  ime     VARCHAR(30),
	IdTim INT REFERENCES Tim(Id)
)
CREATE TABLE Sudac (
  id     INT PRIMARY KEY,
  ime     VARCHAR(30)
)
CREATE TABLE Utakmica (
 	Id INT PRIMARY KEY,
  	IdDomacin INT REFERENCES Tim(Id),
	IdGost INT REFERENCES Tim(Id),
	IdSudac INT REFERENCES Sudac(Id),
	Datum TIMESTAMP,
	PoeniDomacina INT,
	PoeniGosta INT,
	FazaNatjecanja VARCHAR(30)	
)
CREATE TABLE Sut (
 	Id INT PRIMARY KEY,
  	IdUtakmica INT REFERENCES Utakmica(Id),
	IdIgrac INT REFERENCES Igrac(Id),
	Vrsta INT,
	Kos BOOLEAN,
	Minuta INT
)

CREATE TABLE Prekrsaj (
 	Id INT PRIMARY KEY,
  	IdUtakmica INT REFERENCES Utakmica(Id),
	IdIgracRadi INT REFERENCES Igrac(Id),
	IdIgracTrpi INT REFERENCES Igrac(Id),
	Iskljucenje BOOLEAN,
	Minuta INT
)
CREATE TABLE Zamjena (
 	Id INT PRIMARY KEY,
  	IdUtakmica INT REFERENCES Utakmica(Id),
	IdIgracUlazi INT REFERENCES Igrac(Id),
	IdIgracIzlazi INT REFERENCES Igrac(Id),
	Minuta INT
)
CREATE TABLE Skok (
 	Id INT PRIMARY KEY,
  	IdUtakmica INT REFERENCES Utakmica(Id),
	IdIgrac INT REFERENCES Igrac(Id),
	Defenzivni BOOLEAN
)
CREATE TABLE Ukradena (
 	Id INT PRIMARY KEY,
  	IdUtakmica INT REFERENCES Utakmica(Id),
	IdIgracKrade INT REFERENCES Igrac(Id),
	IdIgracGubi INT REFERENCES Igrac(Id)
)

INSERT INTO Tim (id, ime)
VALUES
  (1, 'Atlanta Hawks'),
  (2, 'Boston Celtics'),
  (3, 'Brooklyn Nets'),
  (4, 'Charlotte Hornets'),
  (5, 'Chicago Bulls'),
  (6, 'Cleveland Cavaliers'),
  (7, 'Dallas Mavericks'),
  (8, 'Denver Nuggets'),
  (9, 'Detroit Pistons'),
  (10, 'Golden State Warriors'),
  (11, 'Houston Rockets'),
  (12, 'Indiana Pacers'),
  (13, 'LA Clippers'),
  (14, 'Los Angeles Lakers'),
  (15, 'Memphis Grizzlies'),
  (16, 'Miami Heat'),
  (17, 'Milwaukee Bucks'),
  (18, 'Minnesota Timberwolves'),
  (19, 'New Orleans Pelicans'),
  (20, 'New York Knicks'),
  (21, 'Oklahoma City Thunder'),
  (22, 'Orlando Magic'),
  (23, 'Philadelphia 76ers'),
  (24, 'Phoenix Suns'),
  (25, 'Portland Trail Blazers'),
  (26, 'Sacramento Kings'),
  (27, 'San Antonio Spurs'),
  (28, 'Toronto Raptors'),
  (29, 'Utah Jazz'),
  (30, 'Washington Wizards');
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (1, 'Trae Young', 1), 
  (2, 'John Collins', 1), 
  (3, 'Clint Capela', 1), 
  (4, 'Bogdan Bogdanovic', 1), 
  (5, 'DeAndre Hunter', 1), 
  (6, 'Kevin Huerter', 1), 
  (7, 'Cam Reddish', 1),
  (8, 'Onyeka Okongwu', 1),
  (9, 'Danilo Gallinari', 1),
  (10, 'Lou Williams', 1),
  (11, 'Tony Snell', 1),
  (12, 'Solomon Hill', 1),
  (13, 'Kris Dunn', 1),
  (14, 'Bruno Fernando', 1),
  (15, 'Nathan Knight', 1);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (16, 'Jayson Tatum', 2),
  (17, 'Jaylen Brown', 2),
  (18, 'Marcus Smart', 2),
  (19, 'Kemba Walker', 2),
  (20, 'Evan Fournier', 2),
  (21, 'Tristan Thompson', 2),
  (22, 'Robert Williams III', 2),
  (23, 'Payton Pritchard', 2),
  (24, 'Romeo Langford', 2),
  (25, 'Aaron Nesmith', 2),
  (26, 'Grant Williams', 2),
  (27, 'Luke Kornet', 2),
  (28, 'Semi Ojeleye', 2),
  (29, 'Tacko Fall', 2),
  (30, 'Carsen Edwards', 2);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (31, 'Kevin Durant', 3),
  (32, 'James Harden', 3),
  (33, 'Kyrie Irving', 3),
  (34, 'Joe Harris', 3),
  (35, 'Blake Griffin', 3),
  (36, 'DeAndre Jordan', 3),
  (37, 'Jeff Green', 3),
  (38, 'Bruce Brown', 3),
  (39, 'Landry Shamet', 3),
  (40, 'Nicolas Claxton', 3),
  (41, 'Tyler Johnson', 3),
  (42, 'Timothé Luwawu-Cabarrot', 3),
  (43, 'Chris Chiozza', 3),
  (44, 'Reggie Perry', 3),
  (45, 'Alize Johnson', 3);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (46, 'LaMelo Ball', 4),
  (47, 'Terry Rozier', 4),
  (48, 'Gordon Hayward', 4),
  (49, 'Miles Bridges', 4),
  (50, 'PJ Washington', 4),
  (51, 'Malik Monk', 4),
  (52, 'Cody Zeller', 4),
  (53, 'Devonte Graham', 4),
  (54, 'Caleb Martin', 4),
  (55, 'Jalen McDaniels', 4),
  (56, 'Vernon Carey Jr.', 4),
  (57, 'Nick Richards', 4),
  (58, 'Grant Riller', 4),
  (59, 'Brad Wanamaker', 4),
  (60, 'Nate Darling', 4);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (61, 'Zach LaVine', 5),
  (62, 'Nikola Vucevic', 5),
  (63, 'Coby White', 5),
  (64, 'Patrick Williams', 5),
  (65, 'Thaddeus Young', 5),
  (66, 'Lauri Markkanen', 5),
  (67, 'Tomas Satoransky', 5),
  (68, 'Daniel Theis', 5),
  (69, 'Garrett Temple', 5),
  (70, 'Denzel Valentine', 5),
  (71, 'Troy Brown Jr.', 5),
  (72, 'Cristiano Felicio', 5),
  (73, 'Devon Dotson', 5),
  (74, 'Javonte Green', 5),
  (75, 'Adam Mokoka', 5);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (76, 'Collin Sexton', 6),
  (77, 'Darius Garland', 6),
  (78, 'Kevin Love', 6),
  (79, 'Jarrett Allen', 6),
  (80, 'Isaac Okoro', 6),
  (81, 'Larry Nance Jr.', 6),
  (82, 'Taurean Prince', 6),
  (83, 'Cedi Osman', 6),
  (84, 'Dean Wade', 6),
  (85, 'Damyean Dotson', 6),
  (86, 'Dylan Windler', 6),
  (87, 'Isaiah Hartenstein', 6),
  (88, 'Matthew Dellavedova', 6),
  (89, 'Thon Maker', 6),
  (90, 'Broderic Thomas', 6);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (91, 'Luka Dončić', 7),
  (92, 'Kristaps Porziņģis', 7),
  (93, 'Tim Hardaway Jr.', 7),
  (94, 'Josh Richardson', 7),
  (95, 'Jalen Brunson', 7),
  (96, 'Dorian Finney-Smith', 7),
  (97, 'Maxi Kleber', 7),
  (98, 'Dwight Powell', 7),
  (99, 'Willie Cauley-Stein', 7),
  (100, 'Boban Marjanović', 7),
  (101, 'Josh Green', 7),
  (102, 'Tyrell Terry', 7),
  (103, 'Wesley Iwundu', 7),
  (104, 'Nicolo Melli', 7),
  (105, 'Tyler Bey', 7);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (106, 'Nikola Jokić', 8),
  (107, 'Jamal Murray', 8),
  (108, 'Michael Porter Jr.', 8),
  (109, 'Aaron Gordon', 8),
  (110, 'Will Barton', 8),
  (111, 'Monte Morris', 8),
  (112, 'Paul Millsap', 8),
  (113, 'JaMychal Green', 8),
  (114, 'Facundo Campazzo', 8),
  (115, 'PJ Dozier', 8),
  (116, 'Zeke Nnaji', 8),
  (117, 'Vlatko Čančar', 8),
  (118, 'Markus Howard', 8),
  (119, 'Bol Bol', 8),
  (120, 'Greg Whittington', 8);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (121, 'Jerami Grant', 9),
  (122, 'Josh Jackson', 9),
  (123, 'Killian Hayes', 9),
  (124, 'Mason Plumlee', 9),
  (125, 'Saddiq Bey', 9),
  (126, 'Isaiah Stewart', 9),
  (127, 'Delon Wright', 9),
  (128, 'Wayne Ellington', 9),
  (129, 'Dennis Smith Jr.', 9),
  (130, 'Rodney McGruder', 9),
  (131, 'Hamidou Diallo', 9),
  (132, 'Sekou Doumbouya', 9),
  (133, 'Jahlil Okafor', 9),
  (134, 'Frank Jackson', 9),
  (135, 'Tyler Cook', 9);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (136, 'Stephen Curry', 10),
  (137, 'Draymond Green', 10),
  (138, 'Andrew Wiggins', 10),
  (139, 'Kelly Oubre Jr.', 10),
  (140, 'James Wiseman', 10),
  (141, 'Kevon Looney', 10),
  (142, 'Jordan Poole', 10),
  (143, 'Juan Toscano-Anderson', 10),
  (144, 'Damion Lee', 10),
  (145, 'Kent Bazemore', 10),
  (146, 'Eric Paschall', 10),
  (147, 'Nico Mannion', 10),
  (148, 'Alen Smailagić', 10),
  (149, 'Mychal Mulder', 10),
  (150, 'Justinian Jessup', 10);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (151, 'Christian Wood', 11),
  (152, 'John Wall', 11),
  (153, 'Victor Oladipo', 11),
  (154, 'Eric Gordon', 11),
  (155, 'Kelly Olynyk', 11),
  (156, 'Sterling Brown', 11),
  (157, 'Danuel House Jr.', 11),
  (158, 'JaeSean Tate', 11),
  (159, 'David Nwaba', 11),
  (160, 'D.J. Augustin', 11),
  (161, 'Armoni Brooks', 11),
  (162, 'Anthony Lamb', 11),
  (163, 'Kenyon Martin Jr.', 11),
  (164, 'K.J. Martin', 11),
  (165, 'DaQuan Jeffries', 11);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (166, 'Malcolm Brogdon', 12),
  (167, 'Domantas Sabonis', 12),
  (168, 'Myles Turner', 12),
  (169, 'Caris LeVert', 12),
  (170, 'T.J. Warren', 12),
  (171, 'Doug McDermott', 12),
  (172, 'T.J. McConnell', 12),
  (173, 'Jeremy Lamb', 12),
  (174, 'Goga Bitadze', 12),
  (175, 'Justin Holiday', 12),
  (176, 'Aaron Holiday', 12),
  (177, 'JaKarr Sampson', 12),
  (178, 'Edmond Sumner', 12),
  (179, 'T.J. Leaf', 12),
  (180, 'Keljin Blevins', 12);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (181, 'Kawhi Leonard', 13),
  (182, 'Paul George', 13),
  (183, 'Serge Ibaka', 13),
  (184, 'Marcus Morris Sr.', 13),
  (185, 'Reggie Jackson', 13),
  (186, 'Nicolas Batum', 13),
  (187, 'Patrick Beverley', 13),
  (188, 'Ivica Zubac', 13),
  (189, 'Luke Kennard', 13),
  (190, 'Terance Mann', 13),
  (191, 'Rajon Rondo', 13),
  (192, 'Amir Coffey', 13),
  (193, 'Daniel Oturu', 13),
  (194, 'Jay Scrubb', 13),
  (195, 'Mfiondu Kabengele', 13);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (196, 'LeBron James', 14),
  (197, 'Anthony Davis', 14),
  (198, 'Andre Drummond', 14),
  (199, 'Dennis Schroder', 14),
  (200, 'Montrezl Harrell', 14),
  (201, 'Kyle Kuzma', 14),
  (202, 'Marc Gasol', 14),
  (203, 'Kentavious Caldwell-Pope', 14),
  (204, 'Alex Caruso', 14),
  (205, 'Talen Horton-Tucker', 14),
  (206, 'Wesley Matthews', 14),
  (207, 'Markieff Morris', 14),
  (208, 'Ben McLemore', 14),
  (209, 'Alfonzo McKinnie', 14),
  (210, 'Devontae Cacok', 14);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (211, 'Ja Morant', 15),
  (212, 'Jaren Jackson Jr.', 15),
  (213, 'Dillon Brooks', 15),
  (214, 'Jonas Valančiūnas', 15),
  (215, 'Brandon Clarke', 15),
  (216, 'Kyle Anderson', 15),
  (217, 'DeAnthony Melton', 15),
  (218, 'Grayson Allen', 15),
  (219, 'Desmond Bane', 15),
  (220, 'Xavier Tillman', 15),
  (221, 'Tyus Jones', 15),
  (222, 'Justise Winslow', 15),
  (223, 'Killian Tillie', 15),
  (224, 'Sean McDermott', 15),
  (225, 'John Konchar', 15);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (226, 'Jimmy Butler', 16),
  (227, 'Bam Adebayo', 16),
  (228, 'Goran Dragić', 16),
  (229, 'Duncan Robinson', 16),
  (230, 'Tyler Herro', 16),
  (231, 'Kendrick Nunn', 16),
  (232, 'Andre Iguodala', 16),
  (233, 'Precious Achiuwa', 16),
  (234, 'Meyers Leonard', 16),
  (235, 'Kelly Olynyk', 16),
  (236, 'Max Strus', 16),
  (237, 'Nemanja Bjelica', 16),
  (238, 'Gabe Vincent', 16),
  (239, 'Udonis Haslem', 16),
  (240, 'KZ Okpala', 16);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (241, 'Giannis Antetokounmpo', 17),
  (242, 'Khris Middleton', 17),
  (243, 'Jrue Holiday', 17),
  (244, 'Brook Lopez', 17),
  (245, 'Donte DiVincenzo', 17),
  (246, 'Bobby Portis', 17),
  (247, 'Pat Connaughton', 17),
  (248, 'Bryn Forbes', 17),
  (249, 'PJ Tucker', 17),
  (250, 'Jeff Teague', 17),
  (251, 'Thanasis Antetokounmpo', 17),
  (252, 'Sam Merrill', 17),
  (253, 'Axel Toupane', 17),
  (254, 'Jordan Nwora', 17),
  (255, 'Mamadi Diakite', 17);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (256, 'Karl-Anthony Towns', 18),
  (257, 'DAngelo Russell', 18),
  (258, 'Anthony Edwards', 18),
  (259, 'Malik Beasley', 18),
  (260, 'Juan Hernangómez', 18),
  (261, 'Jarrett Culver', 18),
  (262, 'Naz Reid', 18),
  (263, 'Ricky Rubio', 18),
  (264, 'Josh Okogie', 18),
  (265, 'Jaden McDaniels', 18),
  (266, 'Jordan McLaughlin', 18),
  (267, 'Jaylen Nowell', 18),
  (268, 'Ed Davis', 18),
  (269, 'Jake Layman', 18),
  (270, 'Jarred Vanderbilt', 18);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (271, 'Zion Williamson', 19),
  (272, 'Brandon Ingram', 19),
  (273, 'Lonzo Ball', 19),
  (274, 'Josh Hart', 19),
  (275, 'Steven Adams', 19),
  (276, 'Eric Bledsoe', 19),
  (277, 'Jaxson Hayes', 19),
  (278, 'Nickeil Alexander-Walker', 19),
  (279, 'Willy Hernangómez', 19),
  (280, 'Kira Lewis Jr.', 19),
  (281, 'James Johnson', 19),
  (282, 'Sindarius Thornwell', 19),
  (283, 'Wenyen Gabriel', 19),
  (284, 'Naji Marshall', 19),
  (285, 'Will Magnay', 19);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (286, 'Julius Randle', 20),
  (287, 'RJ Barrett', 20),
  (288, 'Derrick Rose', 20),
  (289, 'Nerlens Noel', 20),
  (290, 'Reggie Bullock', 20),
  (291, 'Immanuel Quickley', 20),
  (292, 'Alec Burks', 20),
  (293, 'Obi Toppin', 20),
  (294, 'Elfrid Payton', 20),
  (295, 'Mitchell Robinson', 20),
  (296, 'Frank Ntilikina', 20),
  (297, 'Kevin Knox II', 20),
  (298, 'Taj Gibson', 20),
  (299, 'Austin Rivers', 20),
  (300, 'Ignas Brazdeikis', 20);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (301, 'Shai Gilgeous-Alexander', 21),
  (302, 'Al Horford', 21),
  (303, 'Luguentz Dort', 21),
  (304, 'Darius Bazley', 21),
  (305, 'Theo Maledon', 21),
  (306, 'Aleksej Pokuševski', 21),
  (307, 'Isaiah Roby', 21),
  (308, 'Hamidou Diallo', 21),
  (309, 'Ty Jerome', 21),
  (310, 'Kenrich Williams', 21),
  (311, 'Mike Muscala', 21),
  (312, 'Justin Jackson', 21),
  (313, 'Moses Brown', 21),
  (314, 'Gabriel Deck', 21),
  (315, 'Josh Hall', 21);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (316, 'Nikola Vučević', 22),
  (317, 'Terrence Ross', 22),
  (318, 'Evan Fournier', 22),
  (319, 'Aaron Gordon', 22),
  (320, 'Cole Anthony', 22),
  (321, 'Dwayne Bacon', 22),
  (322, 'Gary Harris', 22),
  (323, 'James Ennis III', 22),
  (324, 'Mo Bamba', 22),
  (325, 'Michael Carter-Williams', 22),
  (326, 'Chuma Okeke', 22),
  (327, 'Khem Birch', 22),
  (328, 'Al-Farouq Aminu', 22),
  (329, 'Otto Porter Jr.', 22),
  (330, 'Robert Franks', 22);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (331, 'Joel Embiid', 23),
  (332, 'Ben Simmons', 23),
  (333, 'Tobias Harris', 23),
  (334, 'Seth Curry', 23),
  (335, 'Danny Green', 23),
  (336, 'Matisse Thybulle', 23),
  (337, 'Shake Milton', 23),
  (338, 'Dwight Howard', 23),
  (339, 'Furkan Korkmaz', 23),
  (340, 'Tyrese Maxey', 23),
  (341, 'Tony Bradley', 23),
  (342, 'George Hill', 23),
  (343, 'Isaiah Joe', 23),
  (344, 'Vincent Poirier', 23),
  (345, 'Paul Reed', 23);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (346, 'Devin Booker', 24),
  (347, 'Chris Paul', 24),
  (348, 'Deandre Ayton', 24),
  (349, 'Mikal Bridges', 24),
  (350, 'Jae Crowder', 24),
  (351, 'Dario Šarić', 24),
  (352, 'Cameron Johnson', 24),
  (353, 'Cameron Payne', 24),
  (354, 'Langston Galloway', 24),
  (355, 'Abdel Nader', 24),
  (356, 'Jevon Carter', 24),
  (357, 'Frank Kaminsky', 24),
  (358, 'Torrey Craig', 24),
  (359, 'Ty-Shon Alexander', 24),
  (360, 'Damian Jones', 24);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (361, 'Damian Lillard', 25),
  (362, 'CJ McCollum', 25),
  (363, 'Norman Powell', 25),
  (364, 'Jusuf Nurkić', 25),
  (365, 'Robert Covington', 25),
  (366, 'Carmelo Anthony', 25),
  (367, 'Anfernee Simons', 25),
  (368, 'Derrick Jones Jr.', 25),
  (369, 'Enes Kanter', 25),
  (370, 'Zach Collins', 25),
  (371, 'Gary Trent Jr.', 25),
  (372, 'Rondae Hollis-Jefferson', 25),
  (373, 'Harry Giles III', 25),
  (374, 'Keljin Blevins', 25),
  (375, 'TJ Leaf', 25);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (376, 'DeAaron Fox', 26),
  (377, 'Buddy Hield', 26),
  (378, 'Harrison Barnes', 26),
  (379, 'Marvin Bagley III', 26),
  (380, 'Richaun Holmes', 26),
  (381, 'Tyrese Haliburton', 26),
  (382, 'Delon Wright', 26),
  (383, 'Terence Davis', 26),
  (384, 'Chimezie Metu', 26),
  (385, 'Jabari Parker', 26),
  (386, 'Hassan Whiteside', 26),
  (387, 'Justin James', 26),
  (388, 'Mo Harkless', 26),
  (389, 'Kyle Guy', 26),
  (390, 'Robert Woodard II', 26);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (391, 'DeMar DeRozan', 27),
  (392, 'LaMarcus Aldridge', 27),
  (393, 'Dejounte Murray', 27),
  (394, 'Derrick White', 27),
  (395, 'Keldon Johnson', 27),
  (396, 'Jakob Poeltl', 27),
  (397, 'Rudy Gay', 27),
  (398, 'Patty Mills', 27),
  (399, 'Lonnie Walker IV', 27),
  (400, 'Trey Lyles', 27),
  (401, 'Devin Vassell', 27),
  (402, 'Drew Eubanks', 27),
  (403, 'Luka Šamanić', 27),
  (404, 'Quinndary Weatherspoon', 27),
  (405, 'Keita Bates-Diop', 27);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (406, 'Pascal Siakam', 28),
  (407, 'Fred VanVleet', 28),
  (408, 'Kyle Lowry', 28),
  (409, 'OG Anunoby', 28),
  (410, 'Chris Boucher', 28),
  (411, 'Norman Powell', 28),
  (412, 'Terence Davis', 28),
  (413, 'DeAndre Bembry', 28),
  (414, 'Malachi Flynn', 28),
  (415, 'Aron Baynes', 28),
  (416, 'Patrick McCaw', 28),
  (417, 'Yuta Watanabe', 28),
  (418, 'Stanley Johnson', 28),
  (419, 'Paul Watson', 28),
  (420, 'Jalen Harris', 28);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (421, 'Donovan Mitchell', 29),
  (422, 'Rudy Gobert', 29),
  (423, 'Mike Conley', 29),
  (424, 'Bojan Bogdanović', 29),
  (425, 'Joe Ingles', 29),
  (426, 'Jordan Clarkson', 29),
  (427, 'Royce ONeale', 29),
  (428, 'Georges Niang', 29),
  (429, 'Derrick Favors', 29),
  (430, 'Elijah Hughes', 29),
  (431, 'Miye Oni', 29),
  (432, 'Udoka Azubuike', 29),
  (433, 'Trent Forrest', 29),
  (434, 'Matt Thomas', 29),
  (435, 'Jarrell Brantley', 29);
INSERT INTO Igrac (id, ime, IdTim)
VALUES
  (436, 'Bradley Beal', 30),
  (437, 'Russell Westbrook', 30),
  (438, 'Rui Hachimura', 30),
  (439, 'Davis Bertāns', 30),
  (440, 'Thomas Bryant', 30),
  (441, 'Deni Avdija', 30),
  (442, 'Ish Smith', 30),
  (443, 'Robin Lopez', 30),
  (444, 'Raul Neto', 30),
  (445, 'Alex Len', 30),
  (446, 'Cassius Winston', 30),
  (447, 'Garrison Mathews', 30),
  (448, 'Moritz Wagner', 30),
  (449, 'Anthony Gill', 30),
  (450, 'Jordan Bell', 30);

INSERT INTO Trener (id, ime, IdTim)
VALUES
(1, 'Nate McMillan', 1), 
(2, 'Ime Udoka', 2),
(3, 'Steve Nash', 3), 
(4, 'James Borrego', 4), 
(5, 'Billy Donovan', 5), 
(6, 'J.B. Bickerstaff', 6), 
(7, 'Jason Kidd', 7), 
(8, 'Michael Malone', 8), 
(9, 'Dwane Casey', 9), 
(10, 'Steve Kerr', 10), 
(11, 'Stephen Silas', 11), 
(12, 'Rick Carlisle', 12), 
(13, 'Tyronn Lue', 13), 
(14, 'Frank Vogel', 14), 
(15, 'Taylor Jenkins', 15), 
(16, 'Erik Spoelstra', 16), 
(17, 'Mike Budenholzer', 17), 
(18, 'Chris Finch', 18), 
(19, 'Willie Green', 19), 
(20, 'Tom Thibodeau', 20), 
(21, 'Mark Daigneault', 21), 
(22, 'Jamahl Mosley', 22), 
(23, 'Doc Rivers', 23), 
(24, 'Monty Williams', 24), 
(25, 'Chauncey Billups', 25), 
(26, 'Luke Walton', 26), 
(27, 'Gregg Popovich', 27), 
(28, 'Nick Nurse', 28), 
(29, 'Quin Snyder', 29), 
(30, 'Scott Brooks', 30); 

INSERT INTO Sudac (id, ime)
VALUES
(1, 'John Goble'),
(2, 'Marc Davis'),
(3, 'Tony Brothers'),
(4, 'Kane Fitzgerald'),
(5, 'Scott Foster'),
(6, 'Tom Washington'),
(7, 'Courtney Kirkland'),
(8, 'Ken Mauer'),
(9, 'Sean Wright'),
(10, 'James Capers');

INSERT INTO Utakmica (Id, IdDomacin, IdGost, IdSudac, Datum, PoeniDomacina, PoeniGosta, FazaNatjecanja)
VALUES
(1, 1, 2, 1, '2023-10-15 19:00:00', 105, 98, 'Regularna sezona'),
(2, 3, 4, 2, '2023-10-16 20:30:00', 110, 112, 'Regularna sezona'),
(3, 5, 6, 3, '2023-10-17 18:00:00', 92, 89, 'Regularna sezona'),
(4, 7, 8, 4, '2023-10-18 19:15:00', 115, 110, 'Regularna sezona'),
(5, 9, 10, 5, '2023-10-19 20:00:00', 100, 105, 'Regularna sezona'),
(6, 11, 12, 6, '2023-10-20 18:30:00', 108, 99, 'Regularna sezona'),
(7, 13, 14, 7, '2023-10-21 19:45:00', 120, 112, 'Regularna sezona'),
(8, 15, 16, 8, '2023-10-22 20:15:00', 105, 98, 'Regularna sezona'),
(9, 17, 18, 9, '2023-10-23 18:00:00', 92, 96, 'Regularna sezona'),
(10, 19, 20, 10, '2023-10-24 19:30:00', 110, 108, 'Regularna sezona'),
(11, 21, 22, 1, '2023-10-25 20:00:00', 105, 100, 'Regularna sezona'),
(12, 23, 24, 2, '2023-10-26 19:30:00', 112, 108, 'Regularna sezona'),
(13, 25, 26, 3, '2023-10-27 18:45:00', 98, 95, 'Regularna sezona'),
(14, 27, 28, 4, '2023-10-28 20:15:00', 115, 110, 'Regularna sezona'),
(15, 29, 30, 5, '2023-10-29 19:00:00', 105, 102, 'Regularna sezona'),
(16, 1, 3, 6, '2023-10-30 18:30:00', 108, 112, 'Regularna sezona'),
(17, 5, 7, 7, '2023-10-31 19:45:00', 120, 116, 'Regularna sezona'),
(18, 9, 11, 8, '2023-11-01 20:30:00', 105, 98, 'Regularna sezona'),
(19, 13, 15, 9, '2023-11-02 18:15:00', 92, 95, 'Regularna sezona'),
(20, 17, 19, 10, '2023-11-03 19:00:00', 110, 108, 'Regularna sezona'),
(21, 8, 9, 1, '2023-04-15 19:00:00', 112, 108, 'Playin'),
(22, 10, 11, 2, '2023-04-15 20:30:00', 98, 102, 'Playin'),
(23, 1, 8, 3, '2023-04-17 19:00:00', 105, 98, 'Prva runda'),
(24, 2, 7, 4, '2023-04-18 20:30:00', 110, 112, 'Prva runda'),
(25, 3, 6, 5, '2023-04-19 18:00:00', 92, 89, 'Prva runda'),
(26, 4, 5, 6, '2023-04-20 19:15:00', 115, 110, 'Prva runda'),
(27, 1, 4, 7, '2023-04-22 20:00:00', 100, 105, 'Polufinale konferencije'),
(28, 3, 7, 8, '2023-04-24 18:30:00', 108, 99, 'Polufinale konferencije'),
(29, 1, 3, 9, '2023-04-26 19:45:00', 120, 112, 'Finale konferencije'),
(30, 7, 3, 10, '2023-04-28 20:15:00', 105, 98, 'Finale konferencije'),
(31, 1, 7, 1, '2023-05-01 18:00:00', 92, 96, 'Finale');

INSERT INTO Zamjena(Id,IdUtakmica,IdIgracUlazi,IdIgracIzlazi,Minuta)
VALUES
(1,1,1,NULL,0),
(2,1,2,NULL,0),
(3,1,3,NULL,0),
(4,1,4,NULL,0),
(5,1,5,NULL,0),
(6,1,16,NULL,0),
(7,1,17,NULL,0),
(8,1,18,NULL,0),
(9,1,19,NULL,0),
(10,1,20,NULL,0),
(11,1,8,1,30),
(12,1,9,2,30),
(13,1,29,19,20),
(14,1,25,18,40),
(15,1,1,8,45),
(16,1,2,9,45),
(17,1,19,29,45),
(18,1,18,25,45),
(19,1,NULL,1,48),
(20,1,NULL,2,48),
(21,1,NULL,3,48),
(22,1,NULL,4,48),
(23,1,NULL,5,48),
(24,1,NULL,16,48),
(25,1,NULL,17,48),
(26,1,NULL,18,48),
(27,1,NULL,19,48),
(28,1,NULL,20,48);
INSERT INTO Zamjena(Id,IdUtakmica,IdIgracUlazi,IdIgracIzlazi,Minuta)
VALUES
(29,2,31,NULL,0),
(30,2,32,NULL,0),
(31,2,33,NULL,0),
(32,2,34,NULL,0),
(33,2,35,NULL,0),
(34,2,46,NULL,0),
(35,2,47,NULL,0),
(36,2,48,NULL,0),
(37,2,49,NULL,0),
(38,2,50,NULL,0),
(39,2,38,31,30),
(40,2,39,32,30),
(41,2,59,49,20),
(42,2,55,48,40),
(43,2,31,38,45),
(44,2,32,39,45),
(45,2,49,59,45),
(46,2,48,58,45),
(47,2,NULL,31,48),
(48,2,NULL,32,48),
(49,2,NULL,33,48),
(50,2,NULL,34,48),
(51,2,NULL,35,48),
(52,2,NULL,46,48),
(53,2,NULL,47,48),
(54,2,NULL,48,48),
(55,2,NULL,49,48),
(56,2,NULL,50,48);
INSERT INTO Zamjena(Id,IdUtakmica,IdIgracUlazi,IdIgracIzlazi,Minuta)
VALUES
(57,31,1,NULL,0),
(58,31,3,NULL,0),
(59,31,5,NULL,0),
(60,31,7,NULL,0),
(61,31,9,NULL,0),
(63,31,91,NULL,0),
(64,31,92,NULL,0),
(65,31,93,NULL,0),
(66,31,94,NULL,0),
(67,31,95,NULL,0),
(68,31,2,1,30),
(69,31,4,3,30),
(70,31,100,91,20),
(71,31,101,92,40),
(72,31,1,2,45),
(73,31,3,4,45),
(74,31,91,100,45),
(75,31,92,101,45),
(76,31,NULL,1,48),
(77,31,NULL,3,48),
(78,31,NULL,5,48),
(79,31,NULL,7,48),
(80,31,NULL,9,48),
(81,31,NULL,91,48),
(82,31,NULL,92,48),
(83,31,NULL,93,48),
(84,31,NULL,94,48),
(85,31,NULL,95,48);

INSERT INTO Sut(Id,IdUtakmica,IdIgrac,Vrsta,Kos)
VALUES
(1,1,1,1,TRUE),
(2,1,1,1,TRUE),
(3,1,1,2,FALSE),
(4,1,1,3,TRUE),
(5,1,1,3,FALSE),
(6,1,3,1,FALSE),
(7,1,3,1,TRUE),
(8,1,3,2,TRUE),
(9,1,3,2,TRUE),
(10,1,3,3,TRUE),
(11,1,16,1,TRUE),
(12,1,16,1,TRUE),
(13,1,16,2,FALSE),
(14,1,16,2,FALSE),
(15,1,16,3,TRUE),
(16,1,17,2,TRUE),
(17,1,17,2,TRUE),
(18,1,17,3,TRUE),
(19,1,17,3,FALSE),
(20,1,17,3,TRUE);
INSERT INTO Sut(Id,IdUtakmica,IdIgrac,Vrsta,Kos)
VALUES
(21,2,31,1,TRUE),
(22,2,31,1,TRUE),
(23,2,31,2,FALSE),
(24,2,31,3,TRUE),
(25,2,31,3,FALSE),
(26,2,33,1,FALSE),
(27,2,33,1,TRUE),
(28,2,33,2,TRUE),
(29,2,33,2,TRUE),
(30,2,33,3,TRUE),
(31,2,46,1,TRUE),
(32,2,46,1,TRUE),
(33,2,46,2,FALSE),
(34,2,46,2,FALSE),
(35,2,46,3,TRUE),
(36,2,47,2,TRUE),
(37,2,47,2,TRUE),
(38,2,47,3,TRUE),
(39,2,47,3,FALSE),
(40,2,47,3,TRUE);
INSERT INTO Sut(Id,IdUtakmica,IdIgrac,Vrsta,Kos)
VALUES
(41,31,1,1,FALSE),
(42,31,1,1,TRUE),
(43,31,1,2,TRUE),
(44,31,1,3,TRUE),
(45,31,1,3,FALSE),
(46,31,3,1,FALSE),
(47,31,3,1,TRUE),
(48,31,3,2,FALSE),
(49,31,3,2,TRUE),
(50,31,3,3,TRUE),
(51,31,91,1,TRUE),
(52,31,91,1,TRUE),
(53,31,91,2,TRUE),
(54,31,91,2,TRUE),
(55,31,91,3,FALSE),
(56,31,92,1,TRUE),
(57,31,92,2,TRUE),
(58,31,92,3,TRUE),
(59,31,92,3,FALSE),
(60,31,92,3,TRUE);

INSERT INTO Prekrsaj(Id,IdUtakmica,IdIgracRadi,IdIgracTrpi,Iskljucenje)
VALUES
(1,1,1,16,FALSE),
(2,1,2,17,FALSE),
(3,1,3,18,FALSE),
(4,1,3,16,FALSE),
(5,1,3,17,FALSE),
(6,1,16,1,FALSE),
(7,1,17,1,FALSE),
(8,1,19,5,TRUE),
(9,1,19,4,FALSE),
(10,1,20,3,FALSE);
INSERT INTO Prekrsaj(Id,IdUtakmica,IdIgracRadi,IdIgracTrpi,Iskljucenje)
VALUES
(11,2,31,46,FALSE),
(12,2,32,47,FALSE),
(13,2,33,48,FALSE),
(14,2,33,46,TRUE),
(15,2,33,47,FALSE),
(16,2,46,31,FALSE),
(17,2,47,31,FALSE),
(18,2,49,35,TRUE),
(19,2,49,34,FALSE),
(20,2,50,33,FALSE);
INSERT INTO Prekrsaj(Id,IdUtakmica,IdIgracRadi,IdIgracTrpi,Iskljucenje)
VALUES
(21,31,1,91,FALSE),
(22,31,2,92,FALSE),
(23,31,3,93,FALSE),
(24,31,3,94,FALSE),
(25,31,3,95,TRUE),
(26,31,91,1,FALSE),
(27,31,92,1,FALSE),
(28,31,93,5,FALSE),
(29,31,94,4,FALSE),
(30,31,95,3,FALSE);

INSERT INTO Skok(Id,IdUtakmica,IdIgrac,Defenzivni)
VALUES
(1,1,1,FALSE),
(2,1,1,FALSE),
(3,1,2,TRUE),
(4,1,2,FALSE),
(5,1,3,TRUE),
(6,1,3,FALSE),
(7,1,4,FALSE),
(8,1,4,TRUE),
(9,1,4,FALSE),
(10,1,5,FALSE),
(11,1,16,TRUE),
(12,1,16,TRUE),
(13,1,17,TRUE),
(14,1,17,FALSE),
(15,1,18,TRUE),
(16,1,18,FALSE),
(17,1,18,TRUE),
(18,1,19,FALSE),
(19,1,20,TRUE),
(20,1,20,FALSE);
INSERT INTO Skok(Id,IdUtakmica,IdIgrac,Defenzivni)
VALUES
(21,2,31,FALSE),
(22,2,31,FALSE),
(23,2,32,TRUE),
(24,2,32,FALSE),
(25,2,33,TRUE),
(26,2,33,FALSE),
(27,2,34,FALSE),
(28,2,34,TRUE),
(29,2,34,FALSE),
(30,2,35,FALSE),
(31,2,46,TRUE),
(32,2,46,TRUE),
(33,2,47,TRUE),
(34,2,47,FALSE),
(35,2,48,TRUE),
(36,2,48,FALSE),
(37,2,48,TRUE),
(38,2,49,FALSE),
(39,2,50,TRUE),
(40,2,50,FALSE);
INSERT INTO Skok(Id,IdUtakmica,IdIgrac,Defenzivni)
VALUES
(41,31,1,FALSE),
(42,31,1,FALSE),
(43,31,2,TRUE),
(44,31,2,FALSE),
(45,31,3,TRUE),
(46,31,3,FALSE),
(47,31,4,FALSE),
(48,31,4,TRUE),
(49,31,4,FALSE),
(50,31,5,FALSE),
(51,31,91,TRUE),
(52,31,91,TRUE),
(53,31,92,TRUE),
(54,31,92,FALSE),
(55,31,92,TRUE),
(56,31,93,FALSE),
(57,31,93,TRUE),
(58,31,94,FALSE),
(59,31,94,TRUE),
(60,31,95,FALSE);

INSERT INTO Ukradena(Id,IdUtakmica,IdIgracKrade,IdIgracGubi)
VALUES
(1,1,1,16),
(2,1,1,20),
(3,1,2,18),
(4,1,3,17),
(5,1,4,16),
(6,1,16,1),
(7,1,17,2),
(8,1,18,1),
(9,1,18,3),
(10,1,19,5);
INSERT INTO Ukradena(Id,IdUtakmica,IdIgracKrade,IdIgracGubi)
VALUES
(11,2,31,46),
(12,2,31,50),
(13,2,32,48),
(14,2,33,47),
(15,2,34,46),
(16,2,46,31),
(17,2,47,32),
(18,2,48,31),
(19,2,48,33),
(20,2,49,35);
INSERT INTO Ukradena(Id,IdUtakmica,IdIgracKrade,IdIgracGubi)
VALUES
(21,31,1,91),
(22,31,1,92),
(23,31,2,92),
(24,31,3,93),
(25,31,4,94),
(26,31,91,1),
(27,31,91,2),
(28,31,92,3),
(29,31,93,4),
(30,31,95,5);

--kronološki pregled odigranih utakmica
SELECT Domacin.Ime AS Domacin, Gost.Ime AS Gost, Sudac.Ime AS Sudac, Datum, PoeniDomacina,PoeniGosta,FazaNatjecanja
FROM Utakmica INNER JOIN Tim Domacin 
ON Utakmica.IdDomacin=Domacin.Id INNER JOIN Tim Gost
ON Utakmica.IdGost=Gost.Id INNER JOIN Sudac
ON Utakmica.IdSudac=Sudac.Id
ORDER BY Datum

--popis svih igrača koji igrali za određenu momčad tijekom sezone
SELECT DISTINCT Ime FROM Igrac INNER JOIN Zamjena 
ON Igrac.Id=Zamjena.IdIgracUlazi
WHERE Igrac.IdTim=(SELECT Id FROM Tim WHERE Ime ='Boston Celtics')

--popis igrača koji su igrali na pojedinoj utakmici.
SELECT DISTINCT ime AS igrac FROM zamjena INNER JOIN igrac ON zamjena.idigraculazi = igrac.id
WHERE idigraculazi IS NOT NULL AND idutakmica = 1

--izvještaj o rezultatima svih utakmica koje je određena momčad odigrala u pojedinoj fazi natjecanja
SELECT Domacin.Ime, Gost.Ime, PoeniDomacina, PoeniGosta, FazaNatjecanja 
FROM Utakmica INNER JOIN Tim Domacin 
ON Utakmica.IdDomacin=Domacin.Id INNER JOIN Tim Gost
ON Utakmica.IdGost=Gost.Id
WHERE (IdDomacin=(SELECT Id FROM Tim WHERE Ime='Boston Celtics')
OR IdGost=(SELECT Id FROM Tim WHERE Ime='Boston Celtics'))
AND FazaNatjecanja='Regularna sezona'

--izvještaj o ulascima i izlascima igrača na pojedinoj utakmici
SELECT Ulazi.Ime as Ulazi, Izlazi.Ime as Izlazi, Zamjena.Minuta 
FROM Igrac Ulazi INNER JOIN Zamjena 
ON Zamjena.IdIgracUlazi=Ulazi.Id INNER JOIN Igrac Izlazi 
ON Zamjena.IdIgracIzlazi=Izlazi.Id 
WHERE Zamjena.IdIgracUlazi IS NOT NULL AND Zamjena.IdIgracIzlazi IS NOT NULL AND Zamjena.IdUtakmica=2

--izvještaj o prekršajima suđenim na pojedinoj utakmici
SELECT Radi.Ime as RadiPrekrsaj, Trpi.Ime as TrpiPrekrsaj 
FROM Igrac Radi INNER JOIN Prekrsaj 
ON Prekrsaj.IdIgracRadi=Radi.Id INNER JOIN Igrac Trpi 
ON Prekrsaj.IdIgracTrpi=Trpi.Id 
WHERE Prekrsaj.IdUtakmica=31

--statistiku učinka određenog igrača na pojedinoj utakmici, gdje učinak uključuje 
--podatke o ukupnom broju postignutih koševa, broju koševa za 1 bod, broju koševa za 
--2 boda, broju „trica“, postotnoj uspješnosti za svaku navedenu stavku, broju osvojenih 
--lopti, broju izgubljenih lopti, broju skokova te broju prekršaja.
WITH statistikaSut AS(
	SELECT ime, idutakmica, vrsta, kos, COUNT(*) AS broj_suteva
	FROM igrac INNER JOIN sut ON igrac.id = sut.idigrac
	WHERE idigrac = 3 AND idutakmica = 1
	GROUP BY 1, 2, 3, 4),
	
	statistikaPrekrsaj AS(
	SELECT ime, idutakmica
	FROM igrac INNER JOIN prekrsaj ON igrac.id=prekrsaj.idigracradi
	WHERE idigracradi = 3 AND idutakmica = 1
	),
	
	statistikaUkradena AS(
	SELECT ime, idutakmica
	FROM igrac INNER JOIN ukradena ON igrac.id=ukradena.idigrackrade
	WHERE idigrackrade = 3 AND idutakmica = 1
	),
	
	statistikaIzgubljena AS(
	SELECT ime, idutakmica
	FROM igrac INNER JOIN ukradena ON igrac.id=ukradena.idigracgubi
	WHERE idigracgubi = 3 AND idutakmica = 1
	),
	
	statistikaSkok AS(
	SELECT ime, idutakmica
	FROM igrac INNER JOIN skok ON igrac.id=skok.idigrac
	WHERE idigrac = 3 AND idutakmica = 1
	)

SELECT ime, idutakmica,
	SUM(CASE WHEN kos = true THEN broj_suteva ELSE 0 END) AS broj_koseva,
	ROUND(SUM(CASE WHEN kos = true THEN broj_suteva ELSE 0 END) / SUM(broj_suteva), 2) * 100 AS postotak_kos,
	SUM(CASE WHEN vrsta = 1 AND kos = true THEN broj_suteva ELSE 0 END) AS br_kos_za_1,
	ROUND(SUM(CASE WHEN vrsta = 1 AND kos = true THEN broj_suteva ELSE 0 END) / SUM(CASE WHEN vrsta = 1 THEN broj_suteva ELSE 0 END), 2) * 100 AS postotak_za_1,
	SUM(CASE WHEN vrsta = 2 AND kos = true THEN broj_suteva ELSE 0 END) AS br_kos_za_2,
	ROUND(SUM(CASE WHEN vrsta = 2 AND kos = true THEN broj_suteva ELSE 0 END) / SUM(CASE WHEN vrsta = 2 THEN broj_suteva ELSE 0 END), 2) * 100 AS postotak_za_2,
	SUM(CASE WHEN vrsta = 3 AND kos = true THEN broj_suteva ELSE 0 END) AS br_kos_za_3,
	ROUND(SUM(CASE WHEN vrsta = 3 AND kos = true THEN broj_suteva ELSE 0 END) / SUM(CASE WHEN vrsta = 3 THEN broj_suteva ELSE 0 END), 2) * 100 AS postotak_za_3,
	(SELECT COUNT(*) FROM statistikaPrekrsaj) AS broj_prekrsaja,
	(SELECT COUNT(*) FROM statistikaUkradena) AS broj_ukradenih_lopti,
	(SELECT COUNT(*) FROM statistikaIzgubljena) AS broj_izgubljenih_lopti,
	(SELECT COUNT(*) FROM statistikaSkok) AS broj_skokova
FROM statistikaSut
GROUP BY 1,2

--prosječnu statistiku učinka određenog igrača u cijeloj sezoni te ukupno vrijeme koje 
--proveo u igri.
WITH statistikaSut AS(
	SELECT ime, vrsta, kos
	FROM igrac INNER JOIN sut ON sut.idigrac=igrac.id
	WHERE igrac.id=3
),
	statistikaMinute AS(
	SELECT ime, igrac.id,idigraculazi, idigracizlazi, minuta 
	FROM igrac INNER JOIN zamjena ON igrac.id=zamjena.idigraculazi OR igrac.id=zamjena.idigracizlazi
	WHERE igrac.id=3
)

SELECT
	ime,
	COUNT(*) AS broj_suteva,
	COUNT(CASE WHEN kos=true THEN kos END) AS broj_koseva,
	COUNT(CASE WHEN kos=true THEN kos END)::FLOAT/COUNT(*)*100 || '%' AS postotak_ucinka,
	(SELECT SUM(CASE WHEN idigracizlazi=id THEN minuta END) - SUM(CASE WHEN idigraculazi=id THEN minuta END) AS ukupne_minute_igranja FROM statistikaMinute)
	FROM statistikaSut
	GROUP BY 1

-- pregled rezultata svih odigranih utakmica.
SELECT Domacin.Ime AS Domacin, Gost.Ime AS Gost, Sudac.Ime AS Sudac, Datum, PoeniDomacina,PoeniGosta,FazaNatjecanja
FROM Utakmica INNER JOIN Tim Domacin 
ON Utakmica.IdDomacin=Domacin.Id INNER JOIN Tim Gost
ON Utakmica.IdGost=Gost.Id INNER JOIN Sudac
ON Utakmica.IdSudac=Sudac.Id
ORDER BY Datum

CREATE VIEW BrojIgracaPoTimu AS
SELECT
    Tim.id AS TimId,
    Tim.ime AS TimIme,
    COUNT(Igrac.id) AS BrojIgraca
FROM
    Tim 
    LEFT JOIN Igrac  ON Tim.id = Igrac.IdTim
GROUP BY
    Tim.id, Tim.ime;

CREATE VIEW ProsjecniPoeniPoTimu AS
SELECT
    Tim.id AS TimId,
    Tim.ime AS TimIme,
    AVG(CASE WHEN Tim.id = Utakmica.IdDomacin THEN Utakmica.PoeniDomacina END) AS ProsjecniPoeniKaoDomacini,
    AVG(CASE WHEN Tim.id = Utakmica.IdGost THEN Utakmica.PoeniGosta END) AS ProsjecniPoeniKaoGosti
FROM
    Tim 
    LEFT JOIN Utakmica ON Tim.id = Utakmica.IdDomacin OR Tim.id = Utakmica.IdGost
GROUP BY
    Tim.id, Tim.ime;

