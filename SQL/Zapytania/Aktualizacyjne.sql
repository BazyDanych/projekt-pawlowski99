UPDATE studenci
SET    nazwisko = 'Adamska'
WHERE  studenci.id_student = 3;

UPDATE pracownicy
SET    pensja = pensja+100
WHERE  pensja < 5100;

UPDATE akademiki
SET    wolne_miejsca = wolne_miejsca+3
WHERE  id_akademik = 2;