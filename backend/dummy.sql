INSERT INTO auth_user ("password", "last_login", "is_superuser", "username", "first_name",
			"last_name", "email", "is_staff", "is_active", "date_joined")
VALUES
('naksdcpwenifonaosdnf','2024-11-14 17:43:17', false, 'company_jaka@gmail.com','jaka kompanija', '', 'jaka@gmail.com', false, true, '2024-11-14 17:42:20'),
('nsksdcpweniforrosdnf','2024-11-14 17:43:17', false, 'company_slaba@gmail.com','slaba kompanija', '', 'slaba@gmail.com', false, true, '2024-11-14 17:42:20'),
('naksdcpaefagnifonaosdnf','2024-11-14 17:43:17', false, 'company_bogata@gmail.com','bogata kompanija', '', 'bogata@gmail.com', false, true, '2024-11-14 17:42:20'),
('nakwgewghpwenifonaosdnf','2024-11-14 17:43:17', false, 'company_siromasna@gmail.com','siromasna kompanija', '', 'siromasna@gmail.com', false, true, '2024-11-14 17:42:20'),
('naksdcpwwgregreonaosdnf','2024-11-14 17:43:17', false, 'company_velika@gmail.com','velika kompanija', '', 'velika@gmail.com', false, true, '2024-11-14 17:42:20'),
('naksdcpwenifonaosdnf','2024-11-14 17:43:17', false, 'company_mala@gmail.com','mala kompanija', '', 'mala@gmail.com', false, true, '2024-11-14 17:42:20'),
('aabbccddee','2024-11-14 17:43:17', false, 'company_techtonic@gmail.com','Techtonic Solutions', '', 'contact@techtonic.com', false, true, '2024-11-14 17:42:20'),
('bbccddeeff','2024-11-14 17:43:17', false, 'company_greentech@gmail.com','GreenTech Innovations', '', 'info@greentech.com', false, true, '2024-11-14 17:42:20'),
('ccddeeffgg','2024-11-14 17:43:17', false, 'company_worldwise@gmail.com','WorldWise Enterprises', '', 'hello@worldwise.com', false, true, '2024-11-14 17:42:20'),
('ddeeffgghh','2024-11-14 17:43:17', false, 'company_brightlabs@gmail.com','BrightLabs Inc.', '', 'support@brightlabs.com', false, true, '2024-11-14 17:42:20');



commit;

INSERT INTO src_dealership ("user_id", "phoneNo", "TIN", "description", "image","isAccepted")
VALUES (1, '092340325', '1234567891011121', 'This is jaka kompanija.', 'logos/1234567891011121.png', true),
	(2, '095869385', '3849604937258032', 'This is slaba kompanija.', 'logos/3849604937258032.png', true),
	(3, '095624148', '1234567891019021','This is velika kompanija.', 'logos/1234567891019021.png', true),
	(4, '094552859', '1234567891011556', 'This is mala kompanija.', 'logos/1234567891011556.png', true),
	(5, '095417586', '1234555891011121', 'This is bogata kompanija.', 'logos/1234555891011121.png', true),
	(6, '095745326', '1334567891011121', 'This is popularna kompanija.', 'logos/1334567891011121.png', true),
	(7, '555-1234', '1234567890123456', 'This is Techtonic Solutions.', 'logos/3849604937258032.png', true),
	(8, '555-5678', '9876543210987654', 'This is GreenTech Innovations.', 'logos/3849604937258032.png', true),
	(9, '555-8765', '1122334455667788', 'This is WorldWise Enterprises.', 'logos/3849604937258032.png', true),
	(10, '555-4321', '9988776655443322', 'This is BrightLabs Inc.', 'logos/3849604937258032.png', true);

INSERT INTO home_modeltype ("modelTypeName")
VALUES ('Suv');
INSERT INTO home_modeltype ("modelTypeName")
VALUES ('Limo');
INSERT INTO home_modeltype ("modelTypeName")
VALUES ('Compact');

commit;

INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, false, 'G', 'T-cross', 'Volkswagen', 1);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, true, 'E', 'CX-5', 'Mazda', 1);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, false, 'G', 'Taigo', 'Volkswagen', 1);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, true, 'G', 'Tiguan', 'Volkswagen', 1);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, true, 'G', 'Quashqai', 'Nissan', 1);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (4, true, 'G', '500', 'Fiat', 3);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (4, false, 'D', 'Golf', 'Volkswagen', 2);
INSERT INTO home_model ("noOfSeats", "automatic", "fuelType",
					   "modelName", "makeName", "modelType_id")
VALUES (5, true, 'G', 'X5', 'BMW', 1);

commit;

-- lokacije za 10 kompanija
-- lokacije za 10 kompanija
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (1, 'Russia', 'Bogorodskoye', 'Killdeer', '90', 52.372196, 140.442719, 1, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (2, 'Mexico', 'Obrera', 'Merrick', '186', 31.7284972, -106.4899163, 2, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (3, 'Finland', 'Kittilä', 'Kipling', '442', 67.6955232, 24.8590222, 3, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (4, 'Vietnam', 'Ô Môn', 'Spaight', '569', 10.1164943, 105.6326457, 4, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (5, 'China', 'Yao’an', 'Meadow Valley', '4589', 25.504173, 101.241728, 5, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (6, 'Norway', 'Trondheim', 'Shasta', '4', 63.4388688, 10.4232348, 6, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (7, 'Peru', 'Tiabaya', 'Eggendart', '83', -16.4359692, -71.6050339, 7, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (8, 'Czech Republic', 'Velké Bílovice', 'Southridge', '0645', 48.85786, 16.8938239, 8, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (9, 'China', 'Tangwu', 'Village', '9400', 29.342612, 118.484422, 9, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (10, 'United States', 'Baton Rouge', 'Sachs', '059', 30.3859766, -91.0759758, 10, true);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (11, 'Argentina', 'El Bolsón', 'Mandrake', '87690', -41.9430504, -71.5298386, 1, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (12, 'Indonesia', 'Langsa', 'Messerschmidt', '47', 4.4725348, 97.9756343, 2, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (13, 'Indonesia', 'Talambung Laok', 'Muir', '358', -7.0395, 113.69823, 3, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (14, 'China', 'Tangzang', 'Iowa', '3', 34.08611, 106.585112, 4, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (15, 'Tunisia', 'Qaşr Hallāl', 'Laurel', '42', 35.64773, 10.89046, 5, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (16, 'Poland', 'Trzebnica', 'Nevada', '9077', 51.3104211, 17.0632716, 6, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (17, 'Brazil', 'Matozinhos', 'Karstens', '2', -19.5547969, -44.0871994, 7, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (18, 'Poland', 'Cegłów', 'Mayfield', '4490', 52.1469857, 21.7379077, 8, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (19, 'Bulgaria', 'Dimitrovgrad', 'Graceland', '8', 42.1400691, 25.5719576, 9, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (20, 'Indonesia', 'Pakalongan', 'Oneill', '3986', -6.8898362, 109.6745916, 10, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (21, 'Indonesia', 'Oetutulul', 'Northridge', '46', -10.7687519, 122.9944636, 1, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (22, 'Nigeria', 'Bauchi', 'Superior', '94', 10.3009641, 9.8236533, 2, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (23, 'Syria', 'Talldaww', 'Vidon', '42236', 34.92357, 36.48598, 3, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (24, 'Argentina', 'Achiras', 'Onsgard', '61614', -31.6252512, -64.4385856, 4, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (25, 'China', 'Xinyang', 'Harper', '2742', 32.147679, 114.091192, 5, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (26, 'China', 'Xinfu', 'Heffernan', '45', 38.404242, 112.746046, 6, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (27, 'Philippines', 'Torrijos', 'Homewood', '5176', 13.3393279, 122.0103514, 7, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (28, 'Indonesia', 'Tutut', 'Spohn', '919', 4.509193, 96.128731, 8, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (29, 'Belize', 'Belmopan', 'Texas', '1218', 17.2510114, -88.7590201, 9, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (30, 'Egypt', 'Luxor', 'Gallegos', '9439', 25.6985241, 32.6372972, 10, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (31, 'Czech Republic', 'Rokycany', 'Emmet', '5795', 49.747309, 13.582457, 1, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (32, 'Italy', 'Corbetta', 'Cassidy', '7477', 45.4850276, 8.9578269, 2, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (33, 'Poland', 'Mogilany', 'Gibraltar', '2818', 49.9511903, 19.9202214, 3, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (34, 'Philippines', 'Iba', 'Blackhawk', '2587', 15.4077965, 119.9722119, 4, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (35, 'United States', 'Anchorage', 'Corson', '8081', 61.2180562, -149.9002776, 5, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (36, 'Brazil', 'Varginha', 'Curle', '9933', -21.1342075, -45.4322256, 6, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (37, 'Italy', 'Biella', 'Duke', '623', 45.5600507, 8.0539126, 7, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (38, 'Syria', 'Tartous', 'Vineyard', '2923', 34.8765165, 35.8770165, 8, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (39, 'Russia', 'Sukhanikha', 'Forbes', '9565', 57.046345, 39.167964, 9, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (40, 'United States', 'Portland', 'Mendota', '90', 45.523062, -122.676481, 10, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (41, 'Japan', 'Akihabara', 'Pleasant Hill', '5403', 35.682839, 139.759455, 1, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (42, 'Turkey', 'Beylikdüzü', 'Duke', '52', 41.01224, 28.67369, 2, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (43, 'Italy', 'Chiaravalle', 'Weldon', '672', 43.4939239, 13.3401784, 3, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (44, 'United States', 'Springfield', 'Muir', '3', 39.7817213, -89.6501481, 4, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (45, 'United States', 'St. Paul', 'Silver Leaf', '53', 44.953703, -93.089957, 5, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (46, 'Belgium', 'Schaerbeek', 'Ginger', '274', 50.8693337, 4.3906727, 6, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (47, 'Poland', 'Skierniewice', 'Birchwood', '1573', 51.9545671, 20.1336322, 7, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (48, 'India', 'Bhilai', 'Texas', '404', 21.2175363, 81.4309516, 8, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (49, 'Argentina', 'Neuquén', 'Tannahill', '9266', -38.9512781, -68.0596471, 9, false);
insert into src_location ("location_id", "countryName", "cityName", "streetName", "streetNo", "latitude", "longitude", "dealership_id", "isHQ") values (50, 'Czech Republic', 'Vejprty', 'Quincy', '739', 50.3834916, 13.0347588, 10, false);

commit;
INSERT INTO home_vehicle ("registration", "model_id", "dealer_id", "timesRented", "location_id", "isVisible", "noOfReviews", "rating")
VALUES
  ('ABC1234', 1, 1, 200, 1, TRUE, 150, 3.50),  -- timesRented is ~1.33x noOfReviews
  ('XYZ5678', 2, 3, 450, 3, TRUE, 300, 4.00),  -- timesRented is 1.5x noOfReviews
  ('LMN4321', 3, 2, 55, 2, TRUE, 50, 2.75),    -- timesRented is 1.1x noOfReviews
  ('QRS8765', 4, 6, 0, 6, FALSE, 0, NULL),     -- No reviews, so rating is NULL
  ('TUV9876', 5, 4, 380, 4, TRUE, 200, 4.25),  -- timesRented is 1.9x noOfReviews
  ('WXY3456', 6, 1, 520, 1, TRUE, 400, 4.10),  -- timesRented is 1.3x noOfReviews
  ('JKL1122', 7, 5, 160, 5, TRUE, 100, 1.90),  -- timesRented is 1.6x noOfReviews
  ('MNO7788', 8, 3, 90, 3, TRUE, 70, 3.80),    -- timesRented is 1.29x noOfReviews
  ('DEF2345', 1, 2, 0, 2, FALSE, 0, NULL),     -- No reviews, so rating is NULL
  ('GHI6789', 2, 6, 700, 6, TRUE, 500, 3.60),  -- timesRented is 1.4x noOfReviews
  ('PQR5678', 3, 4, 190, 4, TRUE, 120, 2.95),  -- timesRented is 1.58x noOfReviews
  ('STU4321', 4, 5, 75, 5, TRUE, 60, 4.40),    -- timesRented is 1.25x noOfReviews
  ('VWX8765', 5, 2, 250, 2, TRUE, 180, 3.20),  -- timesRented is 1.39x noOfReviews
  ('YZA3456', 6, 1, 500, 1, TRUE, 220, 3.00),  -- timesRented is 2.27x noOfReviews
  ('BCD7890', 7, 6, 750, 6, TRUE, 400, 4.50);  -- timesRented is 1.88x noOfReviews
  commit;

INSERT INTO home_offer ("model_id", "dealer_id", "price", "rating", "noOfReviews", "description", "image")

VALUES
  (1, 1, 12, 4.23, 3, 'VW T-cross is a great car', 'offers/1.png'),
  (2, 3, 19, 3.56, 7, 'Mazda CX-5 is a great car', 'offers/2.png'),
  (3, 2, 15, 4.89, 1, 'VW Taigo is a great car', 'offers/3.png'),
  (4, 6, 18, 0, 0, 'VW Tiguan is a great car', 'offers/4.png'),
  (5, 4, 13, 4.10, 5, 'Nissan Quashqai is a great car', 'offers/5.png'),
  (6, 2, 11, 3.92, 4, 'Fiat 500 is a great car', 'offers/6.png'),
  (7, 5, 20, 4.75, 2, 'VW Golf is a great car', 'offers/7.png'),
  (8, 3, 9, 2.67, 8, 'BMW X5 is a great car', 'offers/8.png'),
  (1, 2, 14, 3.58, 6, 'VW T-cross is a great car', 'offers/1.png'),
  (2, 6, 10, 3.55, 10, 'Mazda CX-5 is a great car', 'offers/2.png'),
  (3, 4, 16, 3.30, 3, 'VW Taigo is a great car', 'offers/3.png'),
  (4, 5, 5, 2.95, 7, 'VW Tiguan is a great car', 'offers/4.png'),
  (5, 2, 17, 4.65, 2, 'Nissan Quashqai is a great car', 'offers/5.png'),
  (6, 3, 8, 1.80, 4, 'Fiat 500 is a great car', 'offers/6.png'),
  (7, 6, 13, 3.90, 5, 'VW Golf is a great car', 'offers/7.png');

INSERT INTO public.src_workinghours --(dayOfTheWeek, startTime, endTime, location_id)
VALUES
    (1,0, '09:00:00', '17:00:00', 1),  -- Monday
    (2,1, '09:00:00', '17:00:00', 1),  -- Tuesday
    (3,2, '09:00:00', '17:00:00', 1),  -- Wednesday
    (4,3, '09:00:00', '17:00:00', 1),  -- Thursday
    (5,4, '09:00:00', '17:00:00', 1),  -- Friday
    (6,5, '09:00:00', '17:00:00', 1),  -- Saturday
    (7,6, '09:00:00', '17:00:00', 1);  -- Sunday
