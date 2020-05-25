CREATE PROCEDURE Kontakt_A (Album INT) 
SELECT imie,nazwisko,telefon,email FROM studenci
WHERE nr_albumu=Album;

CREATE PROCEDURE Zatrudnieni_po (JakasData DATE) 
SELECT imie,nazwisko,data_zatrudnienia FROM pracownicy
WHERE data_zatrudnienia>JakasData;