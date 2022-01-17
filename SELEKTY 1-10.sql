/*1. Vyberie všetky dáta z podrobnosti objednávky ktorých cena je vyššia ako 20*/
SELECT * FROM podrobnosti_obj WHERE celkova_cena > 20;
/*2. Vyberie všetkých užívateľov ktorí bývajú v Košiciach */
SELECT * FROM uzivatelia WHERE mesto LIKE 'Kosice';
/*3. Zoradí užívateľov podľa mena*/
SELECT * FROM uzivatelia ORDER BY meno;
/*4. Vyberie značku a cenu produktu a zoradí sa podľa ceny keď cena bude rovná alebo väčšia ako 15*/
SELECT znacka , cena FROM produkty WHERE cena >= 15 ORDER BY cena;
/*5. Vyberie všetky dáta o produktoch kde sa ich názov začína na U cena je väčšia ako 10 a ich značka začína na C */
SELECT * FROM produkty WHERE nazov LIKE 'U%' AND cena > '10' OR znacka = 'C%';
/*6. Vyberie všetky dáta o užívateľoch ktorých typ sa nerovná 1*/
SELECT * FROM uzivatelia WHERE typ != '1';
/*7. Z produktov vyberie tie ktoré majú v značke e*/
SELECT * FROM produkty WHERE znacka LIKE '%e%';
/*8. Vypise pocet zamestnancov a pocet zakaznikov*/
SELECT typ, COUNT(*) AS pocet FROM uzivatelia GROUP BY typ;
/*9. Vypise pocet objednavok odoslanych v ten den*/
SELECT datum_odoslania, COUNT(*) AS pocet FROM objednavky GROUP BY datum_odoslania;
/*10. Vypise počet produktov, ktoré majú rovnakú cenu*/
SELECT cena, COUNT(*) AS mnozstvo FROM produkty GROUP BY cena HAVING mnozstvo > 1;




