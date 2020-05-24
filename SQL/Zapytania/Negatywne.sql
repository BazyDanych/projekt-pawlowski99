SELECT ulica,
       numer_budynku,
       numer_mieszkania,
       kod_pocztowy,
       miejscowosc
FROM   adres
WHERE  numer_mieszkania IS NOT NULL;

SELECT nazwa AS 'Kierunki bez trybu zaocznego'
FROM   kierunki
WHERE  NOT EXISTS (SELECT *
                   FROM   kierunek_tryb
                   WHERE  kierunki.id_kierunek = kierunek_tryb.id_kierunek
                          AND kierunek_tryb.id_tryb = 2); 