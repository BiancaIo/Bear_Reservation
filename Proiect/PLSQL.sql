/*INTEROGARI*/
/*1.Id-ul, numele, prenumele si profesia pentru angajatii cu cod=14.*/
SELECT ID_a "ID", nume_a "Nume", prenume_a "Prenume", profesie "JOB"
FROM angajati
WHERE cod_z=14;

/*2.Numele ursilor dupa codul speciei, in ordine alfabetica.*/
SELECT nume_u
FROM ursi
WHERE cod_s IN(16,18,19) 
ORDER BY nume_u

/*3.Ursii care au dosar medical.*/
SELECT DISTINCT nume_u
FROM ursi
WHERE dosar LIKE 'DA';

/*4.Id-ul, numele si telefonul managerilor.*/
SELECT ID_a,nume_a,telefon_a
FROM angajati
WHERE profesie LIKE 'Manager';

/*5.Id-ul si numele in ordine descrescatoare dupa ID*/
SELECT ID_a, nume_a
FROM angajati
ORDER BY ID_a DESC;

/*6.Cel mai mic urs ca varsta.*/
SELECT MIN(varsta_u)
FROM ursi

/*7.Numele ursului, caracteristicile speciei careia ii apartine si locatia.*/
SELECT nume_u, caracteristici_s, locatie_z
FROM zone z, specii s, ursi u 
WHERE z.cod_z = s.cod_z AND s.cod_s = u.cod_s;

/*8.Id-ul ursului (si data) care a fost consultat intre 1.2.2010 si 1.2.2015.*/
SELECT id_u, data
FROM consultatii
WHERE data BETWEEN '01/02/2010' AND '01/02/2015';

/*9.Id-ul angajatului, numele, lungimea numelui si pozitia literei a in nume.*/
SELECT ID_a, nume_a, LENGTH(nume_a), INSTR(UPPER(nume_a), 'A')
FROM angajati
WHERE SUBSTR(nume_a, -1) = 'n';

/*10. Numele, prenumele si zona angajatului.*/
SELECT nume_a, prenume_a, locatie_z
FROM angajati a, zone z 
WHERE a.cod_z = z.cod_z; 
