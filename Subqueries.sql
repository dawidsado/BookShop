/* Podzapytania */
/* 2 podzapytanie zwykłe w warunku where */

/* Znaleźć imiona pracowników, którzy są stażystami */
SELECT CONCAT(FIRST_NAME, LAST_NAME) AS "Imię i nazwisko"
FROM EMPLOYEES
JOIN JOBS J on EMPLOYEES.JOB_ID = J.JOB_ID
WHERE NAME = (SELECT NAME
              FROM JOBS
              WHERE NAME = 'Trainee');

/* Znaleźć najdroższe zamówienie */
SELECT ORDER_ID
FROM ORDERS
JOIN BOOKS B on B.BOOK_ID = ORDERS.BOOK_ID
WHERE PRICE = (SELECT MAX(PRICE)
               FROM BOOKS);

/* 2 podzapytania zwykłe w warunku having */

/* Stanowisko, na którym pracuje najwięcej osób */


