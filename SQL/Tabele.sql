CREATE TABLE `studenci`
  (
     `id_student`      INT NOT NULL auto_increment,
     `nr_albumu`       INT NOT NULL,
     `imie`            VARCHAR(255) NOT NULL,
     `nazwisko`        VARCHAR(255) NOT NULL,
     `data_urodzenia`  DATE NOT NULL,
     `pesel`           VARCHAR(11) NOT NULL UNIQUE DEFAULT '99999999999',
     `id_adres`        INT NOT NULL,
     `email`           VARCHAR(255) NOT NULL,
     `telefon`         VARCHAR(15) NOT NULL,
     `rok_rozpoczecia` INT NOT NULL,
     PRIMARY KEY (`id_student`)
  );

CREATE TABLE `adres`
  (
     `id_adres`         INT NOT NULL auto_increment,
     `ulica`            VARCHAR(255) NOT NULL,
     `numer_budynku`    VARCHAR(5) NOT NULL,
     `numer_mieszkania` VARCHAR(5) NULL DEFAULT 'NULL',
     `kod_pocztowy`     VARCHAR(10) NOT NULL,
     `miejscowosc`      VARCHAR(255) NOT NULL,
     `kraj`             VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_adres`)
  );

CREATE TABLE `wydzial`
  (
     `id_wydzial` INT NOT NULL auto_increment,
     `nazwa`      VARCHAR(255) NOT NULL,
     `id_adres`   INT NOT NULL,
     `telefon`    VARCHAR(15) NOT NULL,
     `fax`        VARCHAR(15) NOT NULL,
     `strona_www` VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_wydzial`)
  );

CREATE TABLE `pracownicy`
  (
     `id_pracownik`      INT NOT NULL auto_increment,
     `id_adres`          INT NOT NULL,
     `imie`              VARCHAR(255) NOT NULL,
     `nazwisko`          VARCHAR(255) NOT NULL,
     `email`             VARCHAR(255) NOT NULL,
     `telefon`           VARCHAR(15) NOT NULL,
     `data_zatrudnienia` DATE NOT NULL,
     `id_tytul`          INT NOT NULL,
     `pensja`            DECIMAL(10, 2) NOT NULL,
     PRIMARY KEY (`id_pracownik`)
  );

CREATE TABLE `tytul_naukowy`
  (
     `id_tytul` INT NOT NULL auto_increment,
     `nazwa`    VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_tytul`)
  );

CREATE TABLE `pracownicy_wydzial`
  (
     `id_pracownik` INT NOT NULL,
     `id_wydzial`   INT NOT NULL
  );

CREATE TABLE `stanowisko`
  (
     `id_stanowisko` INT NOT NULL auto_increment,
     `nazwa`         VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_stanowisko`)
  );

CREATE TABLE `pracownicy_stanowisko`
  (
     `id_pracownik`  INT NOT NULL,
     `id_stanowisko` INT NOT NULL
  );

CREATE TABLE `kierunki`
  (
     `id_kierunek` INT NOT NULL auto_increment,
     `nazwa`       VARCHAR(255) NOT NULL,
     `rok`         INT NOT NULL,
     `id_wydzial`  INT NOT NULL,
     PRIMARY KEY (`id_kierunek`)
  );

CREATE TABLE `kierunek_student`
  (
     `id_kierunek` INT NOT NULL,
     `id_tryb`     INT NOT NULL,
     `id_stopien`  INT NOT NULL,
     `id_student`  INT NOT NULL
  );

CREATE TABLE `tryb_studiow`
  (
     `id_tryb` INT NOT NULL auto_increment,
     `nazwa`   VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_tryb`)
  );

CREATE TABLE `stopien_studiow`
  (
     `id_stopien` INT NOT NULL auto_increment,
     `nazwa`      VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_stopien`)
  );

CREATE TABLE `kierunek_tryb`
  (
     `id_kierunek` INT NOT NULL,
     `id_tryb`     INT NOT NULL
  );

CREATE TABLE `kierunek_stopien`
  (
     `id_kierunek` INT NOT NULL,
     `id_stopien`  INT NOT NULL
  );

CREATE TABLE `wplaty`
  (
     `id_wplata`        INT NOT NULL auto_increment,
     `tytul`            VARCHAR(255) NOT NULL,
     `kwota`            DECIMAL(10, 2) NOT NULL,
     `id_rodzaj_w`      INT NOT NULL,
     `data_wplaty`      DATE NOT NULL,
     `data_ksiegowania` DATE NOT NULL,
     `id_student`       INT NOT NULL,
     PRIMARY KEY (`id_wplata`)
  );

CREATE TABLE `rodzaje_wplaty`
  (
     `id_rodzaj_w` INT NOT NULL auto_increment,
     `nazwa`       VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_rodzaj_w`)
  );

CREATE TABLE `grupy`
  (
     `id_grupa`   INT NOT NULL auto_increment,
     `id_student` INT NOT NULL,
     `nr_grupy`   VARCHAR(5) NOT NULL,
     PRIMARY KEY (`id_grupa`)
  );

CREATE TABLE `oceny`
  (
     `id_ocena`     INT NOT NULL auto_increment,
     `id_student`   INT NOT NULL,
     `id_przedmiot` INT NOT NULL,
     `id_rodzaj_o`  INT NOT NULL,
     `id_ocena_w`   INT NULL,
     `zaliczenie`   BOOLEAN NULL,
     PRIMARY KEY (`id_ocena`)
  );

CREATE TABLE `sale`
  (
     `id_sala`    INT NOT NULL auto_increment,
     `nr_sali`    INT NOT NULL,
     `id_wydzial` INT NOT NULL,
     `czy_aula`   BOOLEAN NOT NULL DEFAULT false,
     `czy_lab`    BOOLEAN NOT NULL DEFAULT false,
     `pietro`     INT NOT NULL,
     `miejsca`    INT NOT NULL,
     PRIMARY KEY (`id_sala`)
  );

CREATE TABLE `przedmioty`
  (
     `id_przedmiot`    INT NOT NULL auto_increment,
     `nazwa`           VARCHAR(255) NOT NULL,
     `id_rodzaj_z`     INT NOT NULL,
     `id_kierunek`     INT NOT NULL,
     `rok_prowadzenia` INT NOT NULL,
     `id_pracownik`    INT NOT NULL,
     `id_grupa`        INT NOT NULL,
     PRIMARY KEY (`id_przedmiot`)
  );

CREATE TABLE `rodzaj_oceny`
  (
     `id_rodzaj_o` INT NOT NULL auto_increment,
     `nazwa`       VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_rodzaj_o`)
  );

CREATE TABLE `rodzaj_zajec`
  (
     `id_rodzaj_z` INT NOT NULL auto_increment,
     `nazwa`       VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_rodzaj_z`)
  );

CREATE TABLE `wartosci_ocen`
  (
     `id_ocena_w` INT NOT NULL auto_increment,
     `nazwa`      VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_ocena_w`)
  );

CREATE TABLE `dni`
  (
     `id_dzien` INT NOT NULL auto_increment,
     `nazwa`    VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_dzien`)
  );

CREATE TABLE `plan_zajec`
  (
     `id_plan`      INT NOT NULL auto_increment,
     `id_dzien`     INT NOT NULL,
     `godzina_roz`  TIME NOT NULL,
     `godzina_zak`  TIME NOT NULL,
     `id_przedmiot` INT NOT NULL,
     `id_sala`      INT NOT NULL,
     `id_pracownik` INT NOT NULL,
     PRIMARY KEY (`id_plan`)
  );

CREATE TABLE `prace_dyplomowe`
  (
     `id_praca`     INT NOT NULL auto_increment,
     `id_pracownik` INT NOT NULL,
     `id_rodzaj`    INT NOT NULL,
     `temat`        VARCHAR(255) NOT NULL,
     `id_ocena_w`   INT NOT NULL,
     PRIMARY KEY (`id_praca`)
  );

CREATE TABLE `rodzaje_prac`
  (
     `id_rodzaj` INT NOT NULL auto_increment,
     `nazwa`     VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_rodzaj`)
  );

CREATE TABLE `praca_studenci`
  (
     `id_student` INT NOT NULL,
     `id_praca`   INT NOT NULL
  );

CREATE TABLE `pomoc_studentom`
  (
     `id_swiadczenie` INT NOT NULL auto_increment,
     `id_forma`       INT NOT NULL,
     `kwota`          DECIMAL(10, 2) NOT NULL,
     `id_student`     INT NOT NULL,
     PRIMARY KEY (`id_swiadczenie`)
  );

CREATE TABLE `forma_swiadczenia`
  (
     `id_forma` INT NOT NULL auto_increment,
     `nazwa`    VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_forma`)
  );

CREATE TABLE `akademiki`
  (
     `id_akademik`   INT NOT NULL auto_increment,
     `nr_akademika`  INT NOT NULL,
     `id_adres`      INT NOT NULL,
     `id_student`    INT NOT NULL,
     `miejsca`       INT NOT NULL,
     `wolne_miejsca` INT NOT NULL,
     `czy_parking`   BOOLEAN NOT NULL,
     `id_cennik`     INT NOT NULL,
     PRIMARY KEY (`id_akademik`)
  );

CREATE TABLE `cennik`
  (
     `id_cennik`       INT NOT NULL auto_increment,
     `cena_za_miejsce` DECIMAL(10, 2) NOT NULL,
     `cena_za_dobe`    DECIMAL(10, 2) NOT NULL,
     PRIMARY KEY (`id_cennik`)
  );

CREATE TABLE `pokoje`
  (
     `id_pokoj`              INT NOT NULL auto_increment,
     `nr_pokoju`             INT NOT NULL,
     `dla_niepelnosprawnych` BOOLEAN NOT NULL,
     `ilu_osobowy`           INT NOT NULL,
     `id_akademik`           INT NOT NULL,
     PRIMARY KEY (`id_pokoj`)
  );

CREATE TABLE `wyposazenie`
  (
     `id_wyposazenie` INT NOT NULL auto_increment,
     `nazwa`          VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_wyposazenie`)
  );

CREATE TABLE `dodatki`
  (
     `id_dodatkowe` INT NOT NULL auto_increment,
     `nazwa`        VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id_dodatkowe`)
  );

CREATE TABLE `pokoje_wyposazenie`
  (
     `id_wyposazenie` INT NOT NULL,
     `id_pokoj`       INT NOT NULL
  );

CREATE TABLE `akademiki_dodatki`
  (
     `id_akademik`  INT NOT NULL,
     `id_dodatkowe` INT NOT NULL
  );

ALTER TABLE `studenci`
  ADD CONSTRAINT `studenci_fk0` FOREIGN KEY (`id_adres`) REFERENCES `adres`(
  `id_adres`);

ALTER TABLE `pracownicy`
  ADD CONSTRAINT `pracownicy_fk0` FOREIGN KEY (`id_adres`) REFERENCES `adres`(
  `id_adres`);

ALTER TABLE `pracownicy`
  ADD CONSTRAINT `pracownicy_fk1` FOREIGN KEY (`id_tytul`) REFERENCES
  `tytul_naukowy`(`id_tytul`);

ALTER TABLE `wplaty`
  ADD CONSTRAINT `wplaty_fk0` FOREIGN KEY (`id_rodzaj_w`) REFERENCES
  `rodzaje_wplaty`(`id_rodzaj_w`);

ALTER TABLE `wplaty`
  ADD CONSTRAINT `wplaty_fk1` FOREIGN KEY (`id_student`) REFERENCES `studenci`(
  `id_student`);

ALTER TABLE `wydzial`
  ADD CONSTRAINT `wydzial_fk0` FOREIGN KEY (`id_adres`) REFERENCES `adres`(
  `id_adres`);

ALTER TABLE `kierunki`
  ADD CONSTRAINT `kierunki_fk0` FOREIGN KEY (`id_wydzial`) REFERENCES `wydzial`(
  `id_wydzial`);

ALTER TABLE `kierunek_tryb`
  ADD CONSTRAINT `kierunek_tryb_fk0` FOREIGN KEY (`id_kierunek`) REFERENCES
  `kierunki`(`id_kierunek`);

ALTER TABLE `kierunek_tryb`
  ADD CONSTRAINT `kierunek_tryb_fk1` FOREIGN KEY (`id_tryb`) REFERENCES
  `tryb_studiow`(`id_tryb`);

ALTER TABLE `kierunek_stopien`
  ADD CONSTRAINT `kierunek_stopien_fk0` FOREIGN KEY (`id_kierunek`) REFERENCES
  `kierunki`(`id_kierunek`);

ALTER TABLE `kierunek_stopien`
  ADD CONSTRAINT `kierunek_stopien_fk1` FOREIGN KEY (`id_stopien`) REFERENCES
  `stopien_studiow`(`id_stopien`);

ALTER TABLE `pracownicy_wydzial`
  ADD CONSTRAINT `pracownicy_wydzial_fk0` FOREIGN KEY (`id_pracownik`)
  REFERENCES `pracownicy`(`id_pracownik`);

ALTER TABLE `pracownicy_wydzial`
  ADD CONSTRAINT `pracownicy_wydzial_fk1` FOREIGN KEY (`id_wydzial`) REFERENCES
  `wydzial`(`id_wydzial`);

ALTER TABLE `pracownicy_stanowisko`
  ADD CONSTRAINT `pracownicy_stanowisko_fk0` FOREIGN KEY (`id_pracownik`)
  REFERENCES `pracownicy`(`id_pracownik`);

ALTER TABLE `pracownicy_stanowisko`
  ADD CONSTRAINT `pracownicy_stanowisko_fk1` FOREIGN KEY (`id_stanowisko`)
  REFERENCES `stanowisko`(`id_stanowisko`);

ALTER TABLE `kierunek_student`
  ADD CONSTRAINT `kierunek_student_fk0` FOREIGN KEY (`id_kierunek`) REFERENCES
  `kierunki`(`id_kierunek`);

ALTER TABLE `kierunek_student`
  ADD CONSTRAINT `kierunek_student_fk1` FOREIGN KEY (`id_student`) REFERENCES
  `studenci`(`id_student`);

ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_fk0` FOREIGN KEY (`id_student`) REFERENCES `studenci`(
  `id_student`);

ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_fk1` FOREIGN KEY (`id_przedmiot`) REFERENCES
  `przedmioty`(`id_przedmiot`);

ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_fk2` FOREIGN KEY (`id_rodzaj_o`) REFERENCES
  `rodzaj_oceny`(`id_rodzaj_o`);

ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_fk3` FOREIGN KEY (`id_ocena_w`) REFERENCES
  `wartosci_ocen`(`id_ocena_w`);

ALTER TABLE `sale`
  ADD CONSTRAINT `sale_fk0` FOREIGN KEY (`id_wydzial`) REFERENCES `wydzial`(
  `id_wydzial`);

ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_fk0` FOREIGN KEY (`id_rodzaj_z`) REFERENCES
  `rodzaj_zajec`(`id_rodzaj_z`);

ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_fk1` FOREIGN KEY (`id_kierunek`) REFERENCES
  `kierunki`(`id_kierunek`);

ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_fk2` FOREIGN KEY (`id_pracownik`) REFERENCES
  `pracownicy`(`id_pracownik`);

ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_fk3` FOREIGN KEY (`id_grupa`) REFERENCES `grupy`(
  `id_grupa`);

ALTER TABLE `plan_zajec`
  ADD CONSTRAINT `plan_zajec_fk0` FOREIGN KEY (`id_dzien`) REFERENCES `dni`(
  `id_dzien`);

ALTER TABLE `plan_zajec`
  ADD CONSTRAINT `plan_zajec_fk1` FOREIGN KEY (`id_przedmiot`) REFERENCES
  `przedmioty`(`id_przedmiot`);

ALTER TABLE `plan_zajec`
  ADD CONSTRAINT `plan_zajec_fk2` FOREIGN KEY (`id_sala`) REFERENCES `sale`(
  `id_sala`);

ALTER TABLE `plan_zajec`
  ADD CONSTRAINT `plan_zajec_fk3` FOREIGN KEY (`id_pracownik`) REFERENCES
  `pracownicy`(`id_pracownik`);

ALTER TABLE `grupy`
  ADD CONSTRAINT `grupy_fk0` FOREIGN KEY (`id_student`) REFERENCES `studenci`(
  `id_student`);

ALTER TABLE `prace_dyplomowe`
  ADD CONSTRAINT `prace_dyplomowe_fk0` FOREIGN KEY (`id_pracownik`) REFERENCES
  `pracownicy`(`id_pracownik`);

ALTER TABLE `prace_dyplomowe`
  ADD CONSTRAINT `prace_dyplomowe_fk1` FOREIGN KEY (`id_rodzaj`) REFERENCES
  `rodzaje_prac`(`id_rodzaj`);

ALTER TABLE `prace_dyplomowe`
  ADD CONSTRAINT `prace_dyplomowe_fk2` FOREIGN KEY (`id_ocena_w`) REFERENCES
  `wartosci_ocen`(`id_ocena_w`);

ALTER TABLE `pomoc_studentom`
  ADD CONSTRAINT `pomoc_studentom_fk0` FOREIGN KEY (`id_forma`) REFERENCES
  `forma_swiadczenia`(`id_forma`);

ALTER TABLE `pomoc_studentom`
  ADD CONSTRAINT `pomoc_studentom_fk1` FOREIGN KEY (`id_student`) REFERENCES
  `studenci`(`id_student`);

ALTER TABLE `praca_studenci`
  ADD CONSTRAINT `praca_studenci_fk0` FOREIGN KEY (`id_student`) REFERENCES
  `studenci`(`id_student`);

ALTER TABLE `praca_studenci`
  ADD CONSTRAINT `praca_studenci_fk1` FOREIGN KEY (`id_praca`) REFERENCES
  `prace_dyplomowe`(`id_praca`);

ALTER TABLE `akademiki`
  ADD CONSTRAINT `akademiki_fk0` FOREIGN KEY (`id_adres`) REFERENCES `adres`(
  `id_adres`);

ALTER TABLE `akademiki`
  ADD CONSTRAINT `akademiki_fk1` FOREIGN KEY (`id_student`) REFERENCES
  `studenci`(`id_student`);

ALTER TABLE `akademiki`
  ADD CONSTRAINT `akademiki_fk2` FOREIGN KEY (`id_cennik`) REFERENCES `cennik`(
  `id_cennik`);

ALTER TABLE `pokoje`
  ADD CONSTRAINT `pokoje_fk0` FOREIGN KEY (`id_akademik`) REFERENCES `akademiki`
  (`id_akademik`);

ALTER TABLE `pokoje_wyposazenie`
  ADD CONSTRAINT `pokoje_wyposazenie_fk0` FOREIGN KEY (`id_wyposazenie`)
  REFERENCES `wyposazenie`(`id_wyposazenie`);

ALTER TABLE `pokoje_wyposazenie`
  ADD CONSTRAINT `pokoje_wyposazenie_fk1` FOREIGN KEY (`id_pokoj`) REFERENCES
  `pokoje`(`id_pokoj`);

ALTER TABLE `akademiki_dodatki`
  ADD CONSTRAINT `akademiki_dodatki_fk0` FOREIGN KEY (`id_akademik`) REFERENCES
  `akademiki`(`id_akademik`);

ALTER TABLE `akademiki_dodatki`
  ADD CONSTRAINT `akademiki_dodatki_fk1` FOREIGN KEY (`id_dodatkowe`) REFERENCES
  `dodatki`(`id_dodatkowe`);  