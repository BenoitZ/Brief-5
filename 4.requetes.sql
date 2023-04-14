SELECT  DISTINCT C.nom, A.adresse, CP.code_post, V.ville FROM club AS C 
JOIN adresse AS A USING(id_adresse)
JOIN code_post AS CP USING(id_code_post)
JOIN ville AS V USING(id_ville)
ORDER BY C.nom DESC; 

SELECT Cl.nom, S.identifiant_salles, C.numero_serie, M.temperature FROM club AS Cl 
JOIN salles AS S USING(id_salles)
JOIN capteurs AS C USING(id_capteurs)
JOIN mesures AS M USING(id_mesures)
WHERE S.identifiant_salles LIKE '7%';

