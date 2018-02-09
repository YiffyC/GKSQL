--SOUS REQUETES
--4.1
SELECT NOM
FROM INGENIEUR I
where CURRENT_DATE < ANY (select DATENT
			FROM EMPLOI E
                        WHERE I.MLE = E.MLE
                        ORDER BY DATENT DESC);

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
