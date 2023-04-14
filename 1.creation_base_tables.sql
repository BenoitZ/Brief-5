-- Création de la base de données ainsi que les tables des plus éloignées à la centrale : club

CREATE SCHEMA IF NOT EXISTS euro_fit_benoit;
DEFAULT CHARACTER SET utf8mb4;
USE euro_fit_benoit;

CREATE TABLE IF NOT EXISTS mesures
(
id_mesures INT NOT NULL AUTO_INCREMENT, 
temperature FLOAT NOT NULL,
pression FLOAT NOT NULL,
humidite FLOAT NOT NULL,
PRIMARY KEY (id_mesures)
);

CREATE TABLE IF NOT EXISTS clims
(
id_clims INT NOT NULL AUTO_INCREMENT, 
numero_serie  VARCHAR(20) NOT NULL,
marque  VARCHAR(30) NOT NULL,
PRIMARY KEY (id_clims)
);

CREATE TABLE IF NOT EXISTS prix
(
id_prix INT NOT NULL AUTO_INCREMENT, 
prix FLOAT NOT NULL,
PRIMARY KEY (id_prix)
);

CREATE TABLE IF NOT EXISTS assurances
(
id_assurances INT NOT NULL AUTO_INCREMENT, 
nom  VARCHAR(30) NOT NULL,
telephone  VARCHAR(15) NOT NULL,
PRIMARY KEY (id_assurances)
);

CREATE TABLE IF NOT EXISTS pays
(
id_pays INT NOT NULL AUTO_INCREMENT, 
pays  VARCHAR(30) NOT NULL,
PRIMARY KEY (id_pays)
);

CREATE TABLE IF NOT EXISTS ville
(
id_ville INT NOT NULL AUTO_INCREMENT, 
ville  VARCHAR(30) NOT NULL,
PRIMARY KEY (id_ville)
);

CREATE TABLE IF NOT EXISTS code_post
(
id_code_post INT NOT NULL AUTO_INCREMENT, 
code_post  VARCHAR(15) NOT NULL,
PRIMARY KEY (id_code_post)
);


------------------------------------------------



CREATE TABLE IF NOT EXISTS capteurs
(
id_capteurs INT NOT NULL AUTO_INCREMENT, 
numero_serie  VARCHAR(20) NOT NULL,
id_mesures INT,
PRIMARY KEY (id_capteurs),
CONSTRAINT `fk_id_mesures` FOREIGN KEY (id_mesures) REFERENCES mesures (id_mesures) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS adresse
(
id_adresse INT NOT NULL AUTO_INCREMENT, 
adresse  VARCHAR(50) NOT NULL,
id_pays INT,
id_ville INT,
id_code_post INT,
PRIMARY KEY (id_adresse),
CONSTRAINT `fk_id_pays` FOREIGN KEY (id_pays) REFERENCES pays (id_pays) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_ville` FOREIGN KEY (id_ville) REFERENCES ville (id_ville) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_code_post` FOREIGN KEY (id_code_post) REFERENCES code_post (id_code_post) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS salles
(
id_salles INT NOT NULL AUTO_INCREMENT, 
identifiant_salles  VARCHAR(20) NOT NULL,
types_salles  VARCHAR(30) NOT NULL,
taille_salles FLOAT NOT NULL,
capteurs INT NOT NULL,
vestiaires INT NOT NULL,
toilettes_standard INT NOT NULL,
toilettes_seches INT NOT NULL,
douches INT NOT NULL,
saunas INT NOT NULL,
machine_a_laver INT NOT NULL,
seche_linge INT NOT NULL,
machine_cardio INT NOT NULL,
machine_muscu INT NOT NULL,
id_clims INT,
id_capteurs INT,
PRIMARY KEY (id_salles),
CONSTRAINT `fk_id_clims` FOREIGN KEY (id_clims) REFERENCES clims (id_clims) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_capteurs` FOREIGN KEY (id_capteurs) REFERENCES capteurs (id_capteurs) ON DELETE SET NULL ON UPDATE CASCADE
);


----------------------------------------



CREATE TABLE IF NOT EXISTS avocat
(
id_avocat INT NOT NULL AUTO_INCREMENT, 
nom  VARCHAR(30) NOT NULL,
telephone  VARCHAR(30) NOT NULL,
mail  VARCHAR(50) NOT NULL,
id_adresse INT,
PRIMARY KEY (id_avocat),
CONSTRAINT `fk_id_adresse` FOREIGN KEY (id_adresse) REFERENCES adresse (id_adresse) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS marchandises
(
id_marchandises INT NOT NULL AUTO_INCREMENT, 
complements_alimentaires INT NOT NULL,
tenues INT NOT NULL,
boissons INT NOT NULL,
antalgiques INT NOT NULL,
placebos INT NOT NULL,
livraison TINYINT NOT NULL,
id_prix INT,
id_adresse INT,
PRIMARY KEY (id_marchandises),
CONSTRAINT `fk_id_prix` FOREIGN KEY (id_prix) REFERENCES prix (id_prix) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fkk_id_adresse` FOREIGN KEY (id_adresse) REFERENCES adresse (id_adresse) ON DELETE SET NULL ON UPDATE CASCADE
);


----------------------------------


CREATE TABLE IF NOT EXISTS club
(
id_club INT NOT NULL AUTO_INCREMENT, 
nom  VARCHAR(30) NOT NULL,
telephone  VARCHAR(30) NOT NULL,
mail  VARCHAR(50) NOT NULL,
contrat_assurance  VARCHAR(30) NOT NULL,
salles INT NOT NULL,
surface_totale FLOAT NOT NULL,
id_salles INT,
id_marchandises INT,
id_assurances INT,
id_adresse INT,
id_avocat INT,
PRIMARY KEY (id_club),
CONSTRAINT `fk_id_salles` FOREIGN KEY (id_salles) REFERENCES salles (id_salles) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_marchandises` FOREIGN KEY (id_marchandises) REFERENCES marchandises (id_marchandises) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_assurances` FOREIGN KEY (id_assurances) REFERENCES assurances (id_assurances) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fkkk_id_adresse` FOREIGN KEY (id_adresse) REFERENCES adresse (id_adresse) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_avocat` FOREIGN KEY (id_avocat) REFERENCES avocat (id_avocat) ON DELETE SET NULL ON UPDATE CASCADE
);

