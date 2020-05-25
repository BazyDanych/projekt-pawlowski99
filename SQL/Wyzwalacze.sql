delimiter //

CREATE TRIGGER minimalna_pensja_ins BEFORE INSERT ON pracownicy
       FOR EACH ROW
       BEGIN
           IF NEW.pensja < 2000.00 THEN
               SET NEW.pensja = 2000.00;
           END IF;
END;//

CREATE TRIGGER minimalna_pensja_up BEFORE UPDATE ON pracownicy
       FOR EACH ROW
       BEGIN
           IF NEW.pensja < 2000.00 THEN
               SET NEW.pensja = 2000.00;
           END IF;
END;//

delimiter ;