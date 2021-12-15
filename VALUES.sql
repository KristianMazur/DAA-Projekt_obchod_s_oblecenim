INSERT INTO druh_produktu(`druh`)
VALUES ('tricko'),
('kratasy'),
('rifle'),
('mikina'),
('bunda'),
('tielko'),
('kosela'),
('sveter'),
('ciapka'),
('rukavice');

INSERT INTO typ_uzivatela(`typ_uzivatela`)
VALUES('zakaznik'),
('zamestnanec');

INSERT INTO uzivatelia(`meno`, `priezvisko`, `ulica`, `mesto`, `PSC`, `typ`)
VALUES ('Matko', 'Novy', 'Zelena', 'Zilina', '02311', '1'),
 ('Zdeno', 'Kmet', 'Kmetova', 'Presov', '02854', '2'),
 ('Stefan', 'Praca', 'Biela', 'Poprad', '05847', '1'),
 ('Ludovit', 'Stefan', 'Kolarova', 'Bardejov', '06932', '2'),
 ('Peter', 'Svist', 'Nocna', 'Bratislava', '03425', '1'),
 ('Eva', 'Novakova', 'Zamocna', 'Trnava', '01958', '2'),
 ('Helena', 'Piatocna', 'Klementova', 'Trencin', '06321', '1'),
 ('Marek', 'Potocny', 'Tatranska', 'Nitra', '04769', '2'),
 ('Ondrej', 'Cierny', 'Prazska', 'Martin', '02154', '1'),
 ('Jakub', 'Macej', 'Dielno', 'Kosice', '08246', '2')
 ;

INSERT INTO objednavky(`datum_objednavky`, `datum_odoslania`, `id_uzivatela`)
VALUES ('2021-12-08', '2021-12-10', '1'),
('2021-12-08', '2021-12-10', '3'),
('2021-12-01', '2021-12-03', '5'),
('2021-11-28', '2021-11-30', '7'),
('2021-11-15', '2021-11-18', '9'),
('2021-11-06', '2021-11-09', '1'),
('2021-10-25', '2021-10-27', '3'),
('2021-08-18', '2021-08-23', '5'),
('2021-06-08', '2021-06-11', '7'),
('2021-03-05', '2021-03-09', '9');

INSERT INTO produkty(`nazov`, `znacka`, `druh_produktu`, `cena`)
VALUES ('Tricko kratke', 'Champion', '1', '19.99'),
('Kratasy NEWS', 'Adidas', '2', '15.00'),
('Black Jeans', 'DonLemme', '3', '39.99'),
('Warrior', 'Nike', '4', '49.99'),
('Tommy Winter', 'Tommy Jeans', '5', '100.00'),
('NBA', 'Nike', '6', '19.99'),
('Urban', 'Cropp', '7', '14.99'),
('Christmas', 'Puma', '8', '19.99'),
('Urban Classic', 'Champion', '9', '19.99'),
('Sport', 'Nike', '10', '9.99');

INSERT INTO podrobnosti_obj(`id_objednavka`, `id_produkt`, `objednane_mnozstvo`, `celkova_cena`)
VALUES ('1', '1', '1', '19.9'),
('2', '2', '1', '15.00'),
('3', '3', '1', '39.99'),
('4', '4', '1', '49.99'),
('5', '5', '2', '200'),
('6', '6', '1', '19.99'),
('7', '7', '1', '14.99'),
('8', '8', '1', '19.99'),
('9', '9', '1', '19.99'),
('10', '10', '1', '9.99');
