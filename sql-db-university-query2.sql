-- 1) Contare quanti iscritti ci sono stati ogni anno (la data di iscrizione sulla tabella students è enrolment_date)
SELECT year(enrolment_date), count (year(enrolment_date)) 
FROM students s  
GROUP BY year(enrolment_date); 

-- 2) Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM students s
INNER JOIN `degrees` d 
ON s.degree_id = d.id
WHERE d.name = 'Corso di Laurea in Economia';

-- 3) Selezionare tutti i corsi in cui insegna Fulvio Amato
SELECT t.name, t.surname, c.name
FROM courses c 
INNER JOIN course_teacher ct 
ON ct.course_id = c.id 
INNER JOIN teachers t 
ON ct.teacher_id = t.id 
WHERE t.name = 'Fulvio' AND t.surname = 'Amato';

-- 4) Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT *
FROM students s 
INNER JOIN `degrees` d 
ON s.degree_id = d.id
INNER JOIN departments d2 
ON d.department_id = d2.id 
ORDER BY s.name, s.surname;

-- 5) Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi
SELECT d2.name, count(d.department_id)
FROM `degrees` d 
INNER JOIN departments d2 
ON d.department_id = d2.id 
GROUP BY d2.name;

