--SOUS REQUETES
--4.1
SELECT NOM
FROM INGENIEUR I
where CURRENT_DATE < ANY (select DATENT
												FROM EMPLOI E
                        WHERE I.MLE = E.MLE
                        ORDER BY DATENT DESC);
--Pas sur que ça soit la bonne

--Correction pour marcier et gallet
SELECT NOM
FROM INGENIEUR I
	INNER JOIN EMPLOI E
	ON I.MLE = E.MLE
	WHERE DATENT >= ALL
		(SELECT DATENT FROM EMPLOI WHERE DATENT < '2018-01-01')
AND DATENT < '2018-01-01'

--4.2
SELECT NOM
FROM INGENIEUR I
WHERE VILLE NOT IN
	(SELECT VILLE
        FROM PROJET)
AND SEXE = 'M';


--4.3
SELECT NOM
FROM INGENIEUR I
JOIN AFFECT A
ON I.MLE = A.MLE
WHERE VILLE =ALL(
		SELECT VILLE
                FROM PROJET P
                JOIN AFFECT B
                ON P.CODPRO = B.CODPRO
                WHERE I.MLE= B.MLE
                );
