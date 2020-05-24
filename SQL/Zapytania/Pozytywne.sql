SELECT imie,
       nazwisko,
       telefon,
       email
FROM   studenci
WHERE  nazwisko LIKE '%ski';

SELECT     Concat(kierunki.nazwa, ' ', tryb_studiow.nazwa, ' ', stopien_studiow.nazwa) AS 'Kierunek',
           studenci.imie,
           studenci.nazwisko,
           studenci.nr_albumu,
           studenci.data_urodzenia,
           studenci.pesel,
           adres.miejscowosc,
           studenci.email,
           studenci.telefon,
           studenci.rok_rozpoczecia AS 'Rok'
FROM       kierunki
INNER JOIN kierunek_student
ON         kierunek_student.id_kierunek = kierunki.id_kierunek
INNER JOIN studenci
ON         studenci.id_student = kierunek_student.id_student
INNER JOIN kierunek_tryb
ON         kierunek_tryb.id_kierunek = kierunki.id_kierunek
INNER JOIN tryb_studiow
ON         tryb_studiow.id_tryb = kierunek_tryb.id_tryb
INNER JOIN kierunek_stopien
ON         kierunek_stopien.id_kierunek = kierunki.id_kierunek
INNER JOIN stopien_studiow
ON         stopien_studiow.id_stopien = kierunek_stopien.id_stopien
INNER JOIN adres
ON         studenci.id_adres = adres.id_adres
WHERE      kierunki.nazwa = 'informatyka';

SELECT     przedmioty.nazwa                   AS Przedmiot,
           Round(Avg(wartosci_ocen.nazwa), 2) AS Srednia
FROM       oceny
INNER JOIN studenci
ON         studenci.id_student = oceny.id_student
INNER JOIN przedmioty
ON         przedmioty.id_przedmiot = oceny.id_przedmiot
INNER JOIN wartosci_ocen
ON         wartosci_ocen.id_ocena_w = oceny.id_ocena_w
WHERE      studenci.nr_albumu = 12303
AND        oceny.id_ocena_w IS NOT NULL
GROUP BY   przedmioty.nazwa;

SELECT   imie,
         nazwisko,
         pensja,
         Datediff(Curdate(),data_zatrudnienia) AS 'Dni od Zatrudnienia'
FROM     pracownicy
WHERE    pensja >
         (
                SELECT Avg(pensja)
                FROM   pracownicy)
ORDER BY pensja DESC;

SELECT   miejscowosc,
         Count(*)
FROM     adres
GROUP BY miejscowosc
ORDER BY Count(*);

CREATE VIEW plan_550                                                                              AS
SELECT     dni.nazwa                                                                              AS Dzien,
           plan_zajec.godzina_roz                                                                 AS Godzina,
           plan_zajec.godzina_zak                                                                 AS Koniec,
           przedmioty.nazwa                                                                       AS Przedmiot,
           sale.nr_sali                                                                           AS Sala,
                      Concat(tytul_naukowy.nazwa, ' ', pracownicy.imie, ' ', pracownicy.nazwisko) AS Nauczyciel,
           grupy.nr_grupy                                                                         AS Grupa
FROM       plan_zajec
INNER JOIN dni
ON         dni.id_dzien = plan_zajec.id_dzien
INNER JOIN przedmioty
ON         przedmioty.id_przedmiot = plan_zajec.id_przedmiot
INNER JOIN sale
ON         sale.id_sala = plan_zajec.id_sala
INNER JOIN pracownicy
ON         pracownicy.id_pracownik = plan_zajec.id_pracownik
INNER JOIN tytul_naukowy
ON         pracownicy.id_tytul = tytul_naukowy.id_tytul
INNER JOIN grupy
ON         grupy.id_grupa = przedmioty.id_grupa
WHERE      grupy.nr_grupy = "550";

SELECT     prace_dyplomowe.id_praca,
           prace_dyplomowe.temat,
           wartosci_ocen.nazwa,
           studenci.imie,
           studenci.nazwisko
FROM       prace_dyplomowe
INNER JOIN praca_studenci
ON         praca_studenci.id_praca = prace_dyplomowe.id_praca
INNER JOIN studenci
ON         studenci.id_student = praca_studenci.id_student
INNER JOIN wartosci_ocen
ON         wartosci_ocen.id_ocena_w = prace_dyplomowe.id_ocena_w
WHERE      wartosci_ocen.id_ocena_w > (
           (
                  SELECT Max(prace_dyplomowe.id_ocena_w)
                  FROM   prace_dyplomowe)-2)
ORDER BY   prace_dyplomowe.id_ocena_w DESC;

SELECT imie,
       nazwisko,
       miejscowosc
FROM   studenci AS E
JOIN   adres    AS D
ON     E.id_adres = D.id_adres;

SELECT akademiki.nr_akademika,
       akademiki.wolne_miejsca,
       cennik.cena_za_dobe,
       cennik.cena_za_miejsce
FROM   akademiki
       INNER JOIN cennik
               ON cennik.id_cennik = akademiki.id_cennik
WHERE  akademiki.wolne_miejsca > 0;

SELECT Concat(tytul_naukowy.nazwa, ' ', pracownicy.imie, ' ',
       pracownicy.nazwisko) AS
       Nauczyciel,
       przedmioty.nazwa
       AS Przedmiot,
       przedmioty.rok_prowadzenia
       AS Rok
FROM   przedmioty
       INNER JOIN pracownicy
               ON pracownicy.id_pracownik = przedmioty.id_pracownik
       INNER JOIN tytul_naukowy
               ON pracownicy.id_tytul = tytul_naukowy.id_tytul
WHERE  pracownicy.id_pracownik = 5
ORDER  BY przedmioty.rok_prowadzenia;

SELECT studenci.imie,
       studenci.nazwisko,
       przedmioty.nazwa           AS Przedmiot,
       przedmioty.rok_prowadzenia AS Rok
FROM   przedmioty
       INNER JOIN grupy
               ON grupy.id_grupa = przedmioty.id_grupa
       INNER JOIN studenci
               ON studenci.id_student = grupy.id_student
WHERE  studenci.id_student = 2;

SELECT wplaty.tytul,
       wplaty.kwota,
       rodzaje_wplaty.nazwa    AS 'Rodzaj wplaty',
       wplaty.data_wplaty      AS 'Data wplaty',
       wplaty.data_ksiegowania AS 'Data ksiegowania',
       studenci.imie,
       studenci.nazwisko,
       studenci.nr_albumu      AS 'Nr albumu'
FROM   wplaty
       INNER JOIN studenci
               ON studenci.id_student = wplaty.id_student
       INNER JOIN rodzaje_wplaty
               ON rodzaje_wplaty.id_rodzaj_w = wplaty.id_rodzaj_w
WHERE  wplaty.id_student = 2;

SELECT studenci.imie,
       studenci.nazwisko,
       forma_swiadczenia.nazwa AS 'Swiadczenie',
       pomoc_studentom.kwota
FROM   pomoc_studentom
       INNER JOIN studenci
               ON studenci.id_student = pomoc_studentom.id_student
       INNER JOIN forma_swiadczenia
               ON pomoc_studentom.id_forma = forma_swiadczenia.id_forma
WHERE  studenci.id_student = 2;  