/* Procedury */

/* Liczenie ile jest klientów */
SET SERVEROUTPUT ON;
DECLARE
    num NUMBER;
    BEGIN
        SELECT COUNT(*) INTO num FROM CUSTOMERS;
        DBMS_OUTPUT.PUT_LINE('W bazie jest: ' || num || ' pracowników');
    end;