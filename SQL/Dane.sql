INSERT INTO Adres VALUES
	 (DEFAULT, 'Uniwersytecka'	, '31' , NULL , '80-309' , 'Gdansk'	, 'Polska'),
	 (DEFAULT, 'Uniwersytecka'	, '32' , NULL , '80-309' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Uniwersytecka'	, '33' , NULL , '80-309' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Uniwersytecka'	, '34' , NULL , '80-309' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Uniwersytecka'	, '35' , NULL , '80-309' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Klonowa'		, '41' , NULL , '80-401' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Krucza'			, '42' , NULL , '80-402' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Kruszcowa'		, '43' , NULL , '80-403' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Kujawska'		, '44' , NULL , '80-404' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Lecha'			, '45' , NULL , '80-405' , 'Gdansk' , 'Polska'),
	 (DEFAULT, 'Lubelska'		, '21' , '5'  , '81-201' , 'Gdynia' , 'Polska'),
	 (DEFAULT, 'Mazurska'		, '22' , '4'  , '76-209' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Narciarska'		, '23' , '3'  , '76-208' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Debowa'			, '24' , '2'  , '76-205' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Debowa'			, '25' , '1'  , '76-205' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Hutnicza'		, '15' , '5'  , '81-100' , 'Gdynia' , 'Polska'),
	 (DEFAULT, 'Jaworowa'		, '14' , '4'  , '76-108' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Kamienna'		, '18' , '3'  , '76-104' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Zimna'			, '11' , '2'  , '76-105' , 'Slupsk' , 'Polska'),
	 (DEFAULT, 'Lubelska'		, '10' , '1'  , '81-201' , 'Gdynia' , 'Polska');

INSERT INTO Studenci VALUES
	 (DEFAULT, '12301', 'Jan' 	, 'Nowakowski' 		, '2000-01-10' , '12345678915' , 16 , 'Nowak1@wp.pl' 			, '+48 111 111 111' , 2019),
	 (DEFAULT, '12302', 'Adam' 	, 'Nowak' 		, '1999-02-15' , '12345678914' , 17 , 'ANowak2@wp.pl' 			, '+48 111 222 222' , 2019),
	 (DEFAULT, '12303', 'Anna' 	, 'Kot' 		, '2000-05-19' , '12345678918' , 18 , 'AnnaKot@op.pl' 			, '+48 111 333 444' , 2019),
	 (DEFAULT, '32104', 'Tomasz' , 'Kowalski' 	, '2000-04-08'  , '12345678919' , 19 , 'KowalskiTom@gmail.com'  , '+48 111 555 555' , 2019),
	 (DEFAULT, '32105', 'Pawel'	, 'Kowal' 		, '1999-10-09'  , '12345678910' , 20 , 'PawKowal@wp.pl' 		, '+48 111 666 666' , 2019);

INSERT INTO Wydzial VALUES
	 (DEFAULT, 'Wydzial Informatyki'				, 1 , '+48 333 111 111' , '+48 333 111 112' , 'Inf.Uni.edu.pl'),
	 (DEFAULT, 'Wydzial Prawa i Administracji'	, 2 , '+48 333 222 222' , '+48 333 222 223' , 'PiA.Uni.edu.pl'),
	 (DEFAULT, 'Wydzial Biologii'				, 3 , '+48 333 333 333' , '+48 333 333 334' , 'Bio.Uni.edu.pl'),
	 (DEFAULT, 'Wydzial Nauk Spolecznych'		, 4 , '+48 333 444 444' , '+48 333 444 445' , 'NS.Uni.edu.pl' ),
	 (DEFAULT, 'Wydzial Historyczny'				, 5 , '+48 333 555 555' , '+48 333 555 556' , 'His.Uni.edu.pl');

INSERT INTO Sale VALUES
	 (DEFAULT, 11 , 1 , FALSE , FALSE , 3 , 80),
	 (DEFAULT, 22 , 2 , TRUE  , FALSE , 1 , 200),
	 (DEFAULT, 33 , 3 , FALSE , TRUE  , 2 , 40),
	 (DEFAULT, 44 , 4 , FALSE , FALSE , 2 , 80),
	 (DEFAULT, 55 , 5 , TRUE  , FALSE , 1 , 200);

INSERT INTO Tytul_naukowy VALUES
	 (DEFAULT, 'licencjat'			),
	 (DEFAULT, 'inzynier' 			),
	 (DEFAULT, 'magister' 			),
	 (DEFAULT, 'magister inzynier' 	),
	 (DEFAULT, 'doktor' 				),
	 (DEFAULT, 'doktor habilitowany' ),
	 (DEFAULT, 'profesor' 			);

INSERT INTO Pracownicy VALUES
	 (DEFAULT, 11, 'Kazimierz'	, 'Lis' 		, 'LisK@wp.pl' , '+48 222 111 111' , '2000-01-20' , 7  , 5000.00),
	 (DEFAULT, 12, 'Kacper' 		, 'Dabrowski' 	, 'DabrowskiK@gmail.com' 		, '+48 222 222 222' , '2002-02-22' , 7  , 6000.00),
	 (DEFAULT, 13, 'Patrycja' 	, 'Wysocka' 	, 'PWysocka3@gmail.com' 		, '+48 222 333 333' , '2005-05-06' , 3  , 8000.00),
	 (DEFAULT, 14, 'Ada' 		, 'Kowalska' 	, 'Kowalska1@gmail.com' 		, '+48 222 444 444' , '2010-08-02' , 5  , 6500.00),
	 (DEFAULT, 15, 'Marcin' 		, 'Zawadzki' 	, 'ZawadzkiM2@gmail.com' 		, '+48 222 555 555' , '2008-11-03' , 5  , 8200.00);

INSERT INTO Stanowisko VALUES
	 (DEFAULT, 'Profesor zwyczajny'	 ),
	 (DEFAULT, 'Profesor nadzwyczajny'),
	 (DEFAULT, 'Profesor wizytujacy'  ),
	 (DEFAULT, 'Adiunkt' 			 ),
	 (DEFAULT, 'Asystent' 			 ),
	 (DEFAULT, 'Starszy wykladowca' 	 ),
	 (DEFAULT, 'Docent' 				 ),
	 (DEFAULT, 'Wykladowca' 			 ),
	 (DEFAULT, 'Lektor' 				 ),
	 (DEFAULT,'Instruktor' 			 );

INSERT INTO Kierunki VALUES
	 (DEFAULT, 'informatyka',	1 , 1),
	 (DEFAULT, 'prawo', 		2 ,	2),
	 (DEFAULT, 'biologia', 		1 , 3),
	 (DEFAULT, 'filozofia', 	2 ,	4),
	 (DEFAULT, 'historia', 		1 , 5);

INSERT INTO Tryb_studiow VALUES
	 (DEFAULT, 'stacjonarne'				 ),
	 (DEFAULT, 'niestacjonarne-zaoczne' 	 ),
	 (DEFAULT, 'niestacjonarne-wieczorowe');

INSERT INTO Stopien_studiow VALUES
	 (DEFAULT, 'I stopien'			  ),
	 (DEFAULT, 'II stopien' 			  ),
	 (DEFAULT, 'Jednolite magisterskie');

INSERT INTO Rodzaj_oceny VALUES
	 (DEFAULT, 'Zadanie'),
	 (DEFAULT, 'Kolokwium'),
	 (DEFAULT, 'Egzamin'),
	 (DEFAULT, 'Ocena Koncowa'),
	 (DEFAULT, 'Aktywnosc'	);

INSERT INTO Wartosci_ocen VALUES
	 (DEFAULT, 2.0),
	 (DEFAULT, 3.0),
	 (DEFAULT, 3.5),
	 (DEFAULT, 4.0),
	 (DEFAULT, 4.5),
	 (DEFAULT, 5.0);

INSERT INTO Rodzaj_zajec VALUES
	 (DEFAULT, 'Wyklad' 			   ),
	 (DEFAULT, 'Lektorat'		   ),
	 (DEFAULT, 'Laboratorium' 	   ),
	 (DEFAULT, 'Cwiczenia' 		   ),
	 (DEFAULT, 'Wychowanie fizyczne');

INSERT INTO Dni VALUES
	 (DEFAULT, 'Poniedzialek'),
	 (DEFAULT, 'Wtorek'),
	 (DEFAULT, 'Sroda'),
	 (DEFAULT, 'Czwartek'),
	 (DEFAULT, 'Piatek'),
	 (DEFAULT, 'Sobota'),
	 (DEFAULT, 'Niedziela');

INSERT INTO Rodzaje_prac VALUES
	 (DEFAULT, 'praca magisterska'),
	 (DEFAULT, 'praca licencjacka'),
	 (DEFAULT, 'praca inzynierska'),
	 (DEFAULT, 'praca doktorska'),
	 (DEFAULT, 'praca habilitacyjna'),
	 (DEFAULT, 'praca specjalistyczna'),
	 (DEFAULT, 'praca podyplomowa');

INSERT INTO Prace_dyplomowe VALUES
	 (DEFAULT, 1 , 1 , 'jakis temat 1' , 4 ),
	 (DEFAULT, 2 , 2 , 'jakis temat 2' , 5 ),
	 (DEFAULT, 3 , 1 , 'jakis temat 3' , 6 ),
	 (DEFAULT, 4 , 2 , 'jakis temat 4' , 4 ),
	 (DEFAULT, 5 , 1 , 'jakis temat 5' , 5 );

INSERT INTO Praca_Studenci VALUES
	 ('1', '4'),
	 ('2', '3'),
	 ('3', '2'),
	 ('4', '2'),
	 ('1', '1'),
	 ('2', '5'),
	 ('3', '1');

INSERT INTO Grupy VALUES
	 (DEFAULT, 1 , '550'),
	 (DEFAULT, 2 , '554'),
	 (DEFAULT, 3 , '555'),
	 (DEFAULT, 4 , '558'),
	 (DEFAULT, 5 , '559');

INSERT INTO Przedmioty VALUES
	 (DEFAULT, 'Srodowisko Programisty'		, 3 , 1 , 2019 , 1 , 1),
	 (DEFAULT, 'System organow panstwowych' , 4 , 2 , 2018 , 2 , 2),
	 (DEFAULT, 'Ewolucja'					, 1 , 3 , 2017 , 3 , 3),
	 (DEFAULT, 'Semiotyka'					, 4 , 4 , 2016 , 4 , 4),
	 (DEFAULT, 'Historia Sredniowiecza'		, 1 , 5 , 2016 , 5 , 5),
	 (DEFAULT, 'Historia Nowoczesna'		, 1 , 5 , 2017 , 5 , 2),
	 (DEFAULT, 'Historia Starozytna'		, 1 , 5 , 2018 , 5 , 2),
	 (DEFAULT, 'Historia Polski'		, 1 , 5 , 2019 , 5 , 2);

INSERT INTO Oceny VALUES
	 (DEFAULT, 1 , 5 , 1 , 3 , NULL),
	 (DEFAULT, 1 , 4 , 2 , 4 , NULL),
	 (DEFAULT, 2 , 3 , 1 , 5 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 6 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 5 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 6 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 4 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 5 , NULL),
	 (DEFAULT, 3 , 3 , 5 , 4 , NULL),
	 (DEFAULT, 3 , 3 , 5 , 4 , NULL),
	 (DEFAULT, 3 , 3 , 5 , 4 , NULL),
	 (DEFAULT, 3 , 2 , 5 , 6 , NULL),
	 (DEFAULT, 4 , 1 , 3 , 5 , NULL),
	 (DEFAULT, 4 , 1 , 4 , NULL , TRUE),
	 (DEFAULT, 2 , 2 , 4 , NULL , TRUE);

INSERT INTO Plan_zajec VALUES
	 (DEFAULT, 1 , '8:15:00' , '10:00:00' , 1 , 1 , 1),
	 (DEFAULT, 1 , '10:15:00' , '12:00:00' , 2 , 2 , 2),
	 (DEFAULT, 2 , '14:00:00' , '16:00:00' , 1 , 1 , 1),
	 (DEFAULT, 3 , '12:15:00' , '14:00:00' , 1 , 1 , 1),
	 (DEFAULT, 3 , '14:15:00'  , '16:00:00' , 2 , 2 , 2),
	 (DEFAULT, 4 , '8:15:00' , '10:00:00' , 1 , 1 , 1),
	 (DEFAULT, 4 , '14:00:00' , '16:00:00' , 1 , 1 , 1),
	 (DEFAULT, 5 , '10:00:00' , '12:00:00' , 5 , 5 , 5);

INSERT INTO Forma_swiadczenia VALUES
	 (DEFAULT, 'Stypendium socjalne'),
	 (DEFAULT, 'Stypendium Rektora'),
	 (DEFAULT, 'Stypendium specjalne dla osob niepelnosprawnych'),
	 (DEFAULT, 'Zapomoga'),
	 (DEFAULT, 'Nagrody Rektora'),
	 (DEFAULT, 'Stypendium Ministra Nauki i Szkolnictwa Wyzszego'),
	 (DEFAULT, 'Stypendium Marszalka Wojewodztwa Pomorskiego'),
	 (DEFAULT, 'Stypendium Prezydenta Miasta Gdanska'),
	 (DEFAULT, 'Stypendium Prezydenta Miasta Sopotu'),
	 (DEFAULT, 'Stypendium Prezydenta Miasta Gdyni'),
	 (DEFAULT, 'Stypendium fundowane przez jednostki samorzadu terytorialnego');

INSERT INTO Pomoc_studentom VALUES
	 (DEFAULT, 4 , 1000.00 , 2),
	 (DEFAULT, 1 , 1500.00 , 1),
	 (DEFAULT, 2 , 2000.00 , 3),
	 (DEFAULT, 4 , 1500.00 , 4),
	 (DEFAULT, 5 , 1000.00 , 5);

INSERT INTO Rodzaje_wplaty VALUES
	 (DEFAULT, 'Wplata studencka'  ),
	 (DEFAULT, 'Wplata za akademik');

INSERT INTO Wplaty VALUES
	 (DEFAULT, 'Oplata za legitimacje'	, 80.00 , 1 , '2020-01-04' , '2020-01-05' , 1),
	 (DEFAULT, 'Oplata za legitimacje'	, 80.00 , 1 , '2020-02-05' , '2020-02-06' , 2),
	 (DEFAULT, 'Oplata za legitimacje'	, 80.00 , 1 , '2020-03-10' , '2020-03-11' , 3),
	 (DEFAULT, 'Oplata za legitimacje'	, 80.00 , 1 , '2020-04-15' , '2020-04-16' , 2),
	 (DEFAULT, 'Oplata za legitimacje'	, 160.00 , 1 , '2020-03-15' , '2020-03-16' , 2),
	 (DEFAULT, 'Oplata za legitimacje'	, 160.00 , 1 , '2020-02-15' , '2020-02-16' , 4),
	 (DEFAULT, 'Oplata za legitimacje'	, 160.00 , 1 , '2020-01-15' , '2020-01-16' , 3),
	 (DEFAULT, 'Oplata za legitimacje'	, 80.00 , 1 , '2020-05-20' , '2020-05-21' , 1);

INSERT INTO Cennik VALUES
	 (DEFAULT, 400.00 , 15.00),
	 (DEFAULT, 380.00 , 14.50),
	 (DEFAULT, 420.00 , 15.50),
	 (DEFAULT, 440.00 , 16.00),
	 (DEFAULT, 460.00 , 16.50);

INSERT INTO Dodatki VALUES
	 (DEFAULT, 'Pralnia'),
	 (DEFAULT, 'Silownia'),
	 (DEFAULT, 'Sala TV'),
	 (DEFAULT, 'Sala cichej nauki'),
	 (DEFAULT, 'Sala do gry ping-pong'),
	 (DEFAULT, 'Suszarnia'),
	 (DEFAULT, 'Swietlica'),
	 (DEFAULT, 'Pomieszczenie na rowery'),
	 (DEFAULT, 'Kuchnia');

INSERT INTO Wyposazenie VALUES
	 (DEFAULT, 'Telewizor'),
	 (DEFAULT, 'Komoda'),
	 (DEFAULT, 'Szafa'),
	 (DEFAULT, 'Biurko'),
	 (DEFAULT, 'Lampa');

INSERT INTO Akademiki VALUES
	 (DEFAULT, 1 , 6 , 1 , 200 , 5 , TRUE , 1),
	 (DEFAULT, 2 , 7 , 2 , 210 , 15 , TRUE , 2),
	 (DEFAULT, 3 , 8 , 3 , 205 , 0 , TRUE , 3),
	 (DEFAULT, 4 , 9 , 4 , 200 , 3 , TRUE , 4),
	 (DEFAULT, 5 , 10 , 5 , 200 , 8 , TRUE , 5);

INSERT INTO Pokoje VALUES
	 (DEFAULT, 11  , TRUE  , 2 , 1),
	 (DEFAULT, 22  , FALSE , 1 , 2),
	 (DEFAULT, 33  , FALSE , 2 , 1),
	 (DEFAULT, 44  , FALSE , 1 , 2),
	 (DEFAULT, 55  , TRUE  , 2 , 3),
	 (DEFAULT, 56  , FALSE , 2 , 1),
	 (DEFAULT, 57  , FALSE , 2 , 3),
	 (DEFAULT, 58  , FALSE , 2 , 2),
	 (DEFAULT, 59  , FALSE , 2 , 2),
	 (DEFAULT, 23 , FALSE , 2 , 4),
	 (DEFAULT, 24 , TRUE  , 2 , 3),
	 (DEFAULT, 25 , TRUE  , 1 , 5),
	 (DEFAULT, 26 , FALSE , 2 , 5),
	 (DEFAULT, 27 , TRUE  , 2 , 3),
	 (DEFAULT, 28 , FALSE , 1 , 4),
	 (DEFAULT, 29 , FALSE , 1 , 3),
	 (DEFAULT, 30 , FALSE , 2 , 2),
	 (DEFAULT, 31 , FALSE , 1 , 1),
	 (DEFAULT, 32 , FALSE , 2 , 4),
	 (DEFAULT, 34 , FALSE , 2 , 5),
	 (DEFAULT, 35 , FALSE , 1 , 3),
	 (DEFAULT, 36 , FALSE , 2 , 1),
	 (DEFAULT, 37 , FALSE , 2 , 4),
	 (DEFAULT, 38 , FALSE , 3 , 2),
	 (DEFAULT, 39 , FALSE , 2 , 5);

INSERT INTO Pracownicy_Stanowisko VALUES
	 ('1', '4'),
	 ('2', '3'),
	 ('3', '2'),
	 ('4', '2'),
	 ('1', '1'),
	 ('2', '5'),
	 ('3', '1');

INSERT INTO Pracownicy_Wydzial VALUES
	 ('1', '4'),
	 ('2', '3'),
	 ('3', '2'),
	 ('4', '2'),
	 ('1', '1'),
	 ('2', '5'),
	 ('3', '1');

INSERT INTO Kierunek_Student VALUES
	 ('1','2','1','4'),
	 ('2','1','2','3'),
	 ('3','2','1','2'),
	 ('4','1','2','2'),
	 ('1','2','1','1'),
	 ('2','1','2','5'),
	 ('3','2','1','1');

INSERT INTO Kierunek_Tryb VALUES
	 ('1', '1'),
	 ('1', '2'),
	 ('2', '1'),
	 ('3', '1'),
	 ('4', '1'),
	 ('5', '3');

INSERT INTO Kierunek_Stopien VALUES
	 ('1', '1'),
	 ('2', '2'),
	 ('3', '1'),
	 ('4', '2'),
	 ('5', '1');

INSERT INTO Pokoje_Wyposazenie VALUES
	 ('1', '4'),
	 ('2', '3'),
	 ('3', '2'),
	 ('4', '2'),
	 ('1', '1'),
	 ('2', '5'),
	 ('3', '1');

INSERT INTO Akademiki_Dodatki VALUES
	 ('1', '4'),
	 ('2', '3'),
	 ('3', '2'),
	 ('4', '2'),
	 ('1', '1'),
	 ('2', '5'),
	 ('3', '1');