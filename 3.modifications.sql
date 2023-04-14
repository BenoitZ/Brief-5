Use euro_fit_benoit;
/*
ALTER TABLE `prix` DROP COLUMN `prix`;
ALTER TABLE `marchandises` DROP `complements_alimentaires`;
ALTER TABLE `marchandises` DROP `tenues`;
ALTER TABLE `marchandises` DROP `boissons`;
ALTER TABLE `marchandises` DROP `antalgiques`;
ALTER TABLE `marchandises` DROP `placebos`;


ALTER TABLE marchandises
  ADD types_marchandises varchar(20) NOT NULL
    AFTER id_marchandises;

ALTER TABLE marchandises
  ADD quantites_marchandises INT NOT NULL
    AFTER types_marchandises;
   
INSERT INTO marchandises (types_marchandises, quantites_marchandises, livraison) VALUES ('complements', 10, 1);
INSERT INTO marchandises (types_marchandises, quantites_marchandises, livraison) VALUES ('tenues', 20, 2);
INSERT INTO marchandises (types_marchandises, quantites_marchandises, livraison) VALUES ('boissons', 43, 1);
INSERT INTO marchandises (types_marchandises, quantites_marchandises, livraison) VALUES ('antalgiques', 78, 1);
INSERT INTO marchandises (types_marchandises, quantites_marchandises, livraison) VALUES ('placebos', 1087, 2);

-------------------------------------------------------------------------------
  

DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '1');
DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '2');
DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '3');
DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '4');
DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '5');
DELETE FROM `euro_fit_benoit`.`marchandises` WHERE (`id_marchandises` = '6');
UPDATE `euro_fit_benoit`.`marchandises` SET `id_marchandises` = '1' WHERE (`id_marchandises` = '7');
UPDATE `euro_fit_benoit`.`marchandises` SET `id_marchandises` = '2' WHERE (`id_marchandises` = '8');
UPDATE `euro_fit_benoit`.`marchandises` SET `id_marchandises` = '3' WHERE (`id_marchandises` = '9');
UPDATE `euro_fit_benoit`.`marchandises` SET `id_marchandises` = '4' WHERE (`id_marchandises` = '10');
UPDATE `euro_fit_benoit`.`marchandises` SET `id_marchandises` = '5' WHERE (`id_marchandises` = '11');





ALTER TABLE `euro_fit_benoit`.`marchandises` DROP FOREIGN KEY `fk_id_prix`;
ALTER TABLE `euro_fit_benoit`.`marchandises` DROP COLUMN `id_prix`, DROP INDEX `fk_id_prix` ;

ALTER TABLE `euro_fit_benoit`.`prix` DROP COLUMN `id_prix`, DROP INDEX `id_prix` ;
DROP TABLE prix;

  
ALTER TABLE marchandises
  ADD prix_marchandises FLOAT NOT NULL
    AFTER types_marchandises;

UPDATE marchandises SET prix_marchandises = 23.65 WHERE id_marchandises = 1;
UPDATE marchandises SET prix_marchandises = 13.25 WHERE id_marchandises = 1;
UPDATE marchandises SET prix_marchandises = 7.98 WHERE id_marchandises = 2;
UPDATE marchandises SET prix_marchandises = 38.65 WHERE id_marchandises = 3;
UPDATE marchandises SET prix_marchandises = 17.17 WHERE id_marchandises = 4; 

/ J'ai voulu créer une table intermédiaire entre les tables club et marchandises mais je n'arrive pas à ajouter une clé étrangére comme à la ligne 73

CREATE TABLE IF NOT EXISTS magasins
(
id_magasins INT NOT NULL AUTO_INCREMENT, 
id_marchandises INT,
PRIMARY KEY (id_magasins),
CONSTRAINT `fk_id_marchandises` FOREIGN KEY (id_marchandises) REFERENCES marchandises (id_marchandises) ON DELETE SET NULL ON UPDATE CASCADE
);

ALTER TABLE `euro_fit_benoit`.`club` DROP FOREIGN KEY `fk_id_marchandises`;
ALTER TABLE `euro_fit_benoit`.`club` DROP COLUMN `id_marchandises`, DROP INDEX `fk_id_marchandises` ;


ALTER TABLE club ADD CONSTRAINT fk_id_magasins FOREIGN KEY (id_magasins) REFERENCES magasins(id_magasins);*/

ALTER TABLE `euro_fit_benoit`.`club` ADD CONSTRAINT `fk_id_magasins`FOREIGN KEY (`id_magasins`)REFERENCES `euro_fit_benoit`.`magasins` (`id_magasins`); 
ALTER TABLE `euro_fit_lisa`.`acces_club`ADD CONSTRAINT `fk_avantage` FOREIGN KEY (`acces_club_id`) REFERENCES `euro_fit_lisa`.`avantage` (`avantage_id`) 
/*



INSERT INTO salle -> clim int
INSERT INTO place_de_parking -> salle int

INSERT into salle rameurs 
				vélos

Delete identifiant salles    salles



