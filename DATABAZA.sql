CREATE DATABASE `obchod_oblecenie`; 

CREATE TABLE `druh_produktu` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`druh` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `typ_uzivatela` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`typ_uzivatela` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `uzivatelia` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`meno` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`priezvisko` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`ulica` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mesto` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`PSC` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typ` INT(11) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `typ` (`typ`) USING BTREE,
	CONSTRAINT `FK_uzivatelia_typ_uzivatela` FOREIGN KEY (`typ`) REFERENCES `obchod_oblecenie`.`typ_uzivatela` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `objednavky` (
	`id_objednavka` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`datum_objednavky` DATE NULL DEFAULT NULL,
	`datum_odoslania` DATE NULL DEFAULT NULL,
	`id_uzivatela` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`id_objednavka`) USING BTREE,
	INDEX `id_uzivatela` (`id_uzivatela`) USING BTREE,
	CONSTRAINT `FK_objednavky_uzivatelia` FOREIGN KEY (`id_uzivatela`) REFERENCES `obchod_oblecenie`.`uzivatelia` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `produkty` (
	`id_produkt` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`nazov` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`znacka` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`druh_produktu` INT(11) UNSIGNED NOT NULL,
	`cena` DOUBLE NULL DEFAULT NULL,
	PRIMARY KEY (`id_produkt`) USING BTREE,
	INDEX `druh_produktu` (`druh_produktu`) USING BTREE,
	CONSTRAINT `FK_produkty_druh_produktu` FOREIGN KEY (`druh_produktu`) REFERENCES `obchod_oblecenie`.`druh_produktu` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `podrobnosti_obj` (
	`id_objednavka` INT(11) UNSIGNED NULL DEFAULT NULL,
	`id_produkt` INT(11) UNSIGNED NULL DEFAULT NULL,
	`objednane_mnozstvo` INT(11) NULL DEFAULT NULL,
	`celkova_cena` DOUBLE NULL DEFAULT NULL,
	INDEX `id_objednavka` (`id_objednavka`) USING BTREE,
	INDEX `id_produkt` (`id_produkt`) USING BTREE,
	CONSTRAINT `FK_podrobnosti_obj_objednavky` FOREIGN KEY (`id_objednavka`) REFERENCES `obchod_oblecenie`.`objednavky` (`id_objednavka`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK_podrobnosti_obj_produkty` FOREIGN KEY (`id_produkt`) REFERENCES `obchod_oblecenie`.`produkty` (`id_produkt`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
