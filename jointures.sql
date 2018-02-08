--Serie 1
--3.1.1
SELECT NOM, PRENOM
FROM INGENIEUR I JOIN ING_CPC CP
ON I.MLE = CP.MLE
WHERE COMPET = 'JAVASCRIPT';

--3.1.2
SELECT C.CODCLI, C.DESIGN, P.VILLE
FROM CLIENT C
JOIN CLI_PRO CP
ON C.CODCLI = CP.CODCLI
        JOIN PROJET P 
        ON P.CODPRO = CP.CODPRO                               
WHERE P.VILLE = 'LILLE';               

--3.1.3
SELECT I.NOM, I.PRENOM, E.DATENT
FROM INGENIEUR I JOIN EMPLOI E
ON I.MLE = E.MLE
WHERE E.CODEPT = 7
AND E.DATSOR IS NULL;

--3.1.4
SELECT I.NOM, I.PRENOM, E.DATENT
FROM INGENIEUR I JOIN EMPLOI E
ON I.MLE = E.MLE
WHERE E.CODEPT = 7
AND E.DATSOR IS NULL
ORDER BY E.DATENT;

--3.1.5
SELECT I.NOM,P.LIBPRO, A.PVENTE
FROM INGENIEUR I JOIN EMPLOI E
ON I.MLE = E.MLE
	JOIN AFFECT A 
        ON I.MLE = A.MLE
        	JOIN PROJET P 
                ON A.CODPRO = P.CODPRO
WHERE E.CODEPT = 7
AND A.DATFIN IS NULL
AND E.DATSOR IS NULL
;

--3.4.6
SELECT I.NOM,P.LIBPRO, A.PVENTE
FROM INGENIEUR I JOIN EMPLOI E
ON I.MLE = E.MLE
	JOIN AFFECT A 
        ON I.MLE = A.MLE
        	JOIN PROJET P 
                ON A.CODPRO = P.CODPRO

WHERE E.CODEPT = 7
AND A.DATFIN IS NULL
AND E.DATSOR IS NULL
ORDER BY A.CODPRO DESC
;





--SERIE 2
--2.2.1
SELECT I.MLE, P.VILLE
FROM INGENIEUR I JOIN AFFECT A 
ON I.MLE = A.MLE
	JOIN PROJET P
        ON A.CODPRO = P.CODPRO
WHERE P.VILLE ='PARIS'
AND DATFIN IS NOT NULL;

--2.2.2
SELECT I.NOM, I.PRENOM, A.FONCTION, P.LIBPRO
FROM INGENIEUR I
JOIN AFFECT A
ON I.MLE = A.MLE
	JOIN PROJET P
	ON A.CODPRO = P.CODPRO
WHERE P.CODPRO =22
AND A.DATFIN IS NULL;


--2.2.3
SELECT I.NOM, I.PRENOM
FROM INGENIEUR I JOIN AFFECT A 
ON I.MLE = A.MLE
	JOIN ING_PRO_CPC IPC
        ON A.MLE = IPC.MLE AND A.CODPRO = IPC.CODPRO
WHERE IPC.COMPET = 'JAVA'
AND A.DATDEB < '2000-01-01';

--2.2.4
SELECT D1.DESIGN, D2.DESIGN, D1.PDG
FROM DEPT D1 JOIN DEPT D2
ON D1.PDG = D2.PDG AND D1.CODEPT > D2.CODEPT;

--2.2.5
SELECT I.NOM, C.CODCLI, I.VILLE
FROM INGENIEUR I
JOIN AFFECT A
ON I.MLE = A.MLE
	JOIN PROJET P
	ON P.CODPRO = A.CODPRO
		JOIN CLI_PRO CP
		ON CP.CODPRO = P.CODPRO
			JOIN CLIENT C
			ON CP.CODCLI = C.CODCLI
WHERE C.VILLE = I.VILLE
AND A.DATFIN IS NULL;

--2.2.6
SELECT I.MLE, I.NOM, I.PRENOM
FROM INGENIEUR I JOIN EMPLOI E
ON I.MLE = E.MLE
	JOIN DEPT D
        ON E.CODEPT = D.CODEPT
WHERE D.CODEPT = 7
AND
( 
(E.DATENT < '2000-01-01' AND E.DATSOR IS NULL)
OR (E.DATENT > '2000-01-01' AND E.DATENT<'2000-01-31')
);


















