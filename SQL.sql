# test
use dataia_Nancy;
SELECT anciennete, sinistre, COUNT(*)   
    FROM Dataia_nancy
    GROUP BY anciennete, sinistre;


SELECT  
ROUND( ((count(anciennete) + COUNT(sinistre) ) /  count(*) ) * 100, 2) 
AS pourcentage 
FROM dataia_nancy 
GROUP BY anciennete, sinistre
ORDER BY pourcentage DESC;
