DELETE akademiki_dodatki
FROM       akademiki_dodatki
INNER JOIN dodatki
ON         akademiki_dodatki.id_dodatkowe = dodatki.id_dodatkowe
WHERE      akademiki_dodatki.id_dodatkowe=1;

TRUNCATE TABLE pomoc_studentom;

DELETE
FROM   forma_swiadczenia
WHERE  id_forma=1; 