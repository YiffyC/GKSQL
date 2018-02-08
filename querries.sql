--2.1

--2.1.1
SELECT LIBTYPE 
FROM TYPE;

--2.1.2
SELECT DESIGN, VILLE
FROM CLIENT;

--2.1.3
SELECT *
from ING_PRO_CPC
ORDER BY MLE;

--2.1.4
SELECT DISTINCT VILLE 
FROM DEPT
ORDER BY VILLE;

--2.1.5
SELECT DESIGN, VILLE
FROM CLIENT
ORDER BY VILLE, DESIGN;

--2.1.6
SELECT CODPRO, LIBPRO, COUT
FROM PROJET
ORDER BY COUT DESC;

--2.1.7
SELECT CODPRO, LIBPRO
FROM PROJET
WHERE COUT>10000000;

--2.1.8
SELECT CODPRO, LIBPRO, ADRESSE
FROM PROJET
WHERE ADRESSE LIKE '%BROKLEEN%';

--2.1.9
SELECT NOM
FROM INGENIEUR
WHERE NOM LIKE "S%";

--2.1.10
SELECT MLE, CODPRO
FROM AFFECT
WHERE MLE BETWEEN 501 AND 1000 
AND ( CODPRO = 17 OR CODPRO = 22 OR CODPRO = 120)
AND DATFIN IS NULL --Si la date de fin est null, le projet n'est pas fini
LIMIT 0 , 30;


--2.1.11
SELECT CODPRO, COUT as cout_HT, COUT*(1.196) as cout_TTC --1.196 = TVA
FROM PROJET
WHERE CODPRO BETWEEN 11 AND 20;


--2.1.12
SELECT CODCLI, DESIGN
FROM CLIENT
WHERE LIBSECT is NULL;




--2.2

--2.2.1
SELECT MLE, NOM, PRENOM
FROM INGENIEUR;

--2.2.2
SELECT DISTINCT PDG, DG 
FROM DEPT;

--2.2.3
SELECT MLE 
FROM EMPLOI
WHERE CODEPT = 7
AND DATSOR IS NULL --Actuellement dans le dpt = pas de date de sortie
ORDER BY MLE;

--2.2.4
SELECT DISTINCT SEXE, PRENOM
FROM INGENIEUR
ORDER BY SEXE, PRENOM;

--2.2.5
SELECT CODEPT, DESIGN, PDG
FROM DEPT
WHERE ADRESSE like '%LONDRES%'
AND VILLE = 'PARIS';

--2.2.6
SELECT NOM
FROM INGENIEUR
WHERE NOM NOT LIKE '%E%';


--2.2.7
SELECT MLE, COMPET
FROM ING_CPC
WHERE MLE > 1000
AND COMPET = 'JAVA';

--2.2.8
SELECT NOM
FROM INGENIEUR
WHERE NOM LIKE  '_A%';

--2.2.9
SELECT MLE, NOM, PRENOM
FROM INGENIEUR
WHERE NOTEL IS NULL;
AFFECT

--2.2.10
SELECT MLE
FROM AFFECT
WHERE CODPRO =10
AND DATFIN IS NOT NULL;