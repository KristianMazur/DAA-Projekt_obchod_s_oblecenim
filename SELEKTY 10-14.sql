/*11. Vypíše užívateľa a názov produktu, ktorý musí byť drahší ako 10eur*/
SELECT meno, priezvisko, nazov, cena FROM uzivatelia
JOIN produkty ON id = id_produkt GROUP BY cena
HAVING cena > 10.0;
/*12. Vypise meno a priezvisko uzivatela a datum objednavky*/
SELECT meno, priezvisko, datum_objednavky FROM uzivatelia
JOIN objednavky ON id_uzivatela = id GROUP BY meno;
