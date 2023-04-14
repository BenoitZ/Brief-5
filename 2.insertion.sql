USE euro_fit_benoit;
​

INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);
INSERT INTO mesures (temperature, pression, humidite) VALUES (22,60,1013.2);  

INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('16876H918B', 1);
INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('987OO878YN', 2);
INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('5149GG0268', 3);
INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('70165H6242', 4);
INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('68762O878L', 5);
INSERT INTO capteurs (numero_serie, id_mesures) VALUES ('97268JJ09U', 6);       

INSERT INTO clims (numero_serie, marque) VALUES ('987OO878YN','Renault');
INSERT INTO clims (numero_serie, marque) VALUES ('5149GG0268','Epiphone');
INSERT INTO clims (numero_serie, marque) VALUES ('70165H6242','Opel');
INSERT INTO clims (numero_serie, marque) VALUES ('68762O878L','Gretch');
INSERT INTO clims (numero_serie, marque) VALUES ('97268JJ09U','Selmer');
INSERT INTO clims (numero_serie, marque) VALUES ('1624K98Y3O','Epiphone');

INSERT INTO prix (prix) VALUES (12.10);
INSERT INTO prix (prix) VALUES (8.20);
INSERT INTO prix (prix) VALUES (26.37);
INSERT INTO prix (prix) VALUES (20.60);
INSERT INTO prix (prix) VALUES (32.63);
INSERT INTO prix (prix) VALUES (19.73);

INSERT INTO assurances (nom, telephone) VALUES ('ASSURIX', '+33654555556');
INSERT INTO assurances (nom, telephone) VALUES ('VITALFISH', '+4555212121'); 

INSERT INTO pays (pays) VALUES ('France');
INSERT INTO pays (pays) VALUES ('Allemagne');
INSERT INTO pays (pays) VALUES ('Irlande');
INSERT INTO pays (pays) VALUES ('Pays-Bas');
INSERT INTO pays (pays) VALUES ('Espagne');
INSERT INTO pays (pays) VALUES ('Belgique');                

INSERT INTO ville (ville) VALUES ('Coussay-les-bois');            
INSERT INTO ville (ville) VALUES ('Boskoop');
INSERT INTO ville (ville) VALUES ('Coupvray');
INSERT INTO ville (ville) VALUES ('Amsterdam');
INSERT INTO ville (ville) VALUES ('Les Epesses');
INSERT INTO ville (ville) VALUES ('Cagnes sur mer');

INSERT INTO code_post (code_post) VALUES ('86270');
INSERT INTO code_post (code_post) VALUES ('2771 WX');  
INSERT INTO code_post (code_post) VALUES ('77700');
INSERT INTO code_post (code_post) VALUES ('1012 LM');
INSERT INTO code_post (code_post) VALUES ('85590');
INSERT INTO code_post (code_post) VALUES ('06300');     
            
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('9 PLACE DES ECOLES',1,1,1);
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('Den Ham 23A',2,2,2); 
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('Bd de Parc, 77700 Coupvray',3,3,3); 
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('Damrak 66',4,4,4); 
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('Rue du Puy du Fou',5,5,5); 
INSERT INTO adresse (adresse, id_pays, id_ville, id_code_post) VALUES ('50B Rue du jamBonHam',6,6,6);

INSERT INTO avocat (nom, telephone, mail, id_adresse) VALUES ('Bigornio', '+33654586256', 'bigor@yahoo.fr', 5);
INSERT INTO avocat (nom, telephone, mail, id_adresse) VALUES ('Chila', '+33652436256', 'chila@yahoo.fr', 2);
INSERT INTO avocat (nom, telephone, mail, id_adresse) VALUES ('Moule', '+354586256', 'moule@yahoo.fr', 3);

INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 5, 6);
INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 3, 4);
INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 1, 3);
INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 2, 6);
INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 6, 5);
INSERT INTO marchandises (complements_alimentaires, tenues, boissons, antalgiques, placebos, livraison, id_prix, id_adresse) VALUES (4,7,1,8, 9, 1, 4, 1); 

INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('828709726G',10,'Salle muscu',2, 30, 10, 5, 30, 3, 5, 5, 0, 30, 1, 6);
INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('72972987926G',30,'Salle cardio',2, 30, 10, 5, 30, 3, 5, 5, 30, 0, 3, 2);
INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('64651F987',40,'Salle rameur',2, 30, 10, 5, 30, 3, 5, 5, 0, 0, 4, 1);
INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('985624F71',20,'Salle cardio',2, 30, 10, 5, 30, 3, 5, 5, 30, 0, 5, 5);
INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('8971986H918',56.72,'Salle muscu',2, 30, 10, 5, 30, 3, 5, 5, 0, 30, 2, 4);
INSERT INTO salles (identifiant_salles, taille_salles, types_salles, capteurs, vestiaires, toilettes_standard, toilettes_seches, douches, saunas, machine_a_laver, seche_linge, machine_cardio, machine_muscu, id_clims, id_capteurs) VALUES ('1615413H9889',28,'Salle cycliste',2, 30, 10, 5, 30, 3, 5, 5, 0, 0, 4, 2);

INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Los', '04287936', 'turibu@gmail.com', 10, '66852FF28', 2, 5, 1, 1, 3, 1);
INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Los', '04287936', 'turibu@gmail.com', 22.2, '66852FF28', 2, 2, 1, 1, 3, 1);
INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Samblos', '08292726', 'samblos@gmail.com', 10.23, '66852FF28', 3, 2, 1, 2, 5, 2);
INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Samblos', '08292726', 'samblos@gmail.com', 20.23, '66852FF28', 3, 1, 1, 2, 5, 2);
INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Cinios', '08292726', 'cinios@gmail.com', 12.9, '66852FF28', 4, 5, 1, 1, 6, 3);
INSERT INTO club (nom, telephone, mail, surface_totale, contrat_assurance, salles, id_salles, id_marchandises, id_assurances, id_adresse, id_avocat) VALUES ('Cinios', '08292726', 'cinios@gmail.com', 32, '66852FF28', 4, 3, 1, 1, 6, 3);

