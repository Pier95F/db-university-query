CREATE DATABASE db_university_query;
use db_university_query;

-- 1) Selezionare il dipartimento il cui capo è Bernardo Sanna
SELECT * 
FROM departments 
WHERE `head_of_department` ='Bernardo Sanna';

-- 2) Selezionare tutti i corsi di laurea magistrale
SELECT *
FROM degrees 
WHERE `level` = 'magistrale';

-- 3) Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
FROM courses
WHERE `cfu` > 10;

-- 4) Selezionare tutti gli insegnanti che non hanno il numero di telefono
SELECT *
FROM teachers t 
WHERE t.phone IS NULL;

-- 5) Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM students s 
WHERE timestampdiff(year, date_of_birth, curdate()) > 30;

-- 6) Selezionare tutti gli studenti che hanno un indirizzo email gmail o yahoo
SELECT * 
FROM students 
WHERE email LIKE '%gmail%' OR email LIKE '%yahoo%';

-- 7) Selezionare tutti gli esami che si sono svolti a luglio 2020
SELECT * 
FROM exams 
WHERE month(date)=7;