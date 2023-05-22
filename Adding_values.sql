/*  Dodawanie rekordów */

/* Genres Table */
create or replace procedure addIntoGenres(Id number, name varchar2) as
    BEGIN
        insert into GENRES(genre_id, name) values (Id, name);
        DBMS_OUTPUT.PUT_LINE('Gatunek' || name || 'dodany');
    end;

begin addIntoGenres(1, 'Fantasy');
end;

begin addIntoGenres(2, 'Fiction');
end;

begin addIntoGenres(3, 'Science Fiction');
end;

begin addIntoGenres(4, 'Romance');
end;

begin addIntoGenres(5, 'Mystery');
end;

begin addIntoGenres(6, 'Thriller');
end;

/* Books */
create or replace procedure addIntoBooks(Id number, title varchar2, author varchar2, price number, genre_id number, quantity number) as
    BEGIN
        insert into BOOKS(book_id, title, author, price, genre_id, "Quantity") values (Id, title, author, price, genre_id, quantity);
        DBMS_OUTPUT.PUT_LINE('Książka ' || title || 'dodany');
    end;

begin addIntoBooks(1, 'Harry Potter and the Philosophers Stone', 'J.K. Rowling', 25.99, 1, 1);
end;

begin addIntoBooks(2, 'To Kill a Mockingbird', 'Harper Lee', 15.99, 2, 1);
end;

begin addIntoBooks(3, '1984', 'George Orwell', 19.99, 3, 1);
end;

begin addIntoBooks(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 12.99, 2, 1);
end;

begin addIntoBooks(5, 'Pride and Prejudice', 'Jane Austen', 9.99, 4, 2);
end;

begin addIntoBooks(6, 'The Catcher in the Rye', 'J.D. Salinger', 14.99, 2, 1);
end;

/* Jobs */
create or replace procedure addIntoJobs(Id number, name varchar2) as
    BEGIN
        insert into JOBS(job_id, name) values (Id, name);
        DBMS_OUTPUT.PUT_LINE('Stanowisko ' || name || ' dodane');
    end;

begin addIntoJobs(1, 'Manager');
end;


begin addIntoJobs(2, 'Salesman');
end;


begin addIntoJobs(3, 'Trainee');
end;

/* Employees */
create or replace procedure addIntoEmployees(Id number, first_name varchar2, last_name varchar2, job_id number) as
    BEGIN
        insert into EMPLOYEES(employee_id, first_name, last_name, job_id) values (Id, first_name, last_name, job_id);
        DBMS_OUTPUT.PUT_LINE('Pracownik ' || first_name || last_name || ' dodany/a');
    end;

begin addIntoEmployees(1, 'Jan', 'Kowalski', 1);
end;

begin addIntoEmployees(2, 'Agnieszka', 'Masło', 2);
end;

begin addIntoEmployees(3, 'John', 'Kapusta', 2);
end;

begin addIntoEmployees(4,'Michael','Jordan', 2);
end;

begin addIntoEmployees(5, 'Beata', 'Miła', 3);
end;

begin addIntoEmployees(6, 'Zbigniew', 'Trzeci', 3);
end;


/* Customers */
create or replace procedure addIntoCustomers(Id number, first_name varchar2, last_name varchar2, email varchar2, password varchar2, address varchar2, city varchar2, zip_code varchar2) as
    BEGIN
        insert into CUSTOMERS(customer_id, first_name, last_name, email, password, address, city, zip_code) values (Id, first_name, last_name, email, password, address, city, zip_code);
        DBMS_OUTPUT.PUT_LINE('Klient ' || first_name || ' ' || last_name || ' dodany/a');
    end;

begin addIntoCustomers(1, 'John', 'Doe', 'john.doe@example.com', 'password', '123 Main St.', 'Anytown', '12345');
end;

begin addIntoCustomers(2, 'Jane', 'Smith', 'jane.smith@example.com', 'password', '456 Oak St.', 'Sometown', '67890');
end;

begin addIntoCustomers(3, 'Bob', 'Johnson', 'bob.johnson@example.com', 'password', '789 Pine St.', 'Othertown', '54321');
end;

begin addIntoCustomers(4, 'Alice', 'Jones', 'alice.jones@example.com', 'password', '1010 Maple St.', 'Smalltown', '45678');
end;

begin addIntoCustomers(5, 'David', 'Brown', 'david.brown@example.com', 'password', '111 Elm St.', 'Bigtown', '98765');
end;

begin addIntoCustomers(6, 'Karen', 'Green', 'karen.green@example.com', 'password', '222 Cedar St.', 'Largetown', '24680');
end;

/* Orders */
create or replace procedure addIntoOrders(Id number, customer_id number, employee_id number, book_id number, order_date date) as
    BEGIN
        insert into ORDERS(ORDER_ID, CUSTOMER_ID, EMPLOYEE_ID, BOOK_ID, ORDER_DATE) values (Id, customer_id, employee_id, book_id, order_date);
        DBMS_OUTPUT.PUT_LINE('Zamówienie o numerze ' || Id || ' dodane dnia ' || order_date);
    end;

begin addIntoOrders(1, 1, 2, 1, TO_DATE('1-05-1981','DD-MM-YYYY'));
end;

begin addIntoOrders(2, 2, 3, 2, TO_DATE('1-03-2023','DD-MM-YYYY'));
end;

begin addIntoOrders(3, 3, 4, 3, TO_DATE('5-07-2021','DD-MM-YYYY'));
end;

begin addIntoOrders(4, 3, 4, 4, TO_DATE('22-04-2023','DD-MM-YYYY'));
end;

begin addIntoOrders(5, 4, 5, 5, TO_DATE('1-02-2023','DD-MM-YYYY'));
end;

begin addIntoOrders(6, 5, 6, 5, TO_DATE('13-06-2020','DD-MM-YYYY'));
end;

commit;