/* Tworzenie tabel */

CREATE TABLE Books (
    book_id integer  NOT NULL,
    title varchar2(100)  NOT NULL,
    author varchar2(100)  NOT NULL,
    price number(6,2)  NOT NULL,
    genre_id integer  NOT NULL,
    Quantity integer NOT NULL,
    CONSTRAINT Books_pk PRIMARY KEY (book_id)
) ;

CREATE TABLE Customers (
    customer_id integer  NOT NULL,
    first_name varchar2(20)  NOT NULL,
    last_name varchar2(20)  NOT NULL,
    email varchar2(40)  NOT NULL,
    password varchar2(50)  NOT NULL,
    address varchar2(50)  NOT NULL,
    city varchar2(50)  NOT NULL,
    zip_code varchar2(20)  NOT NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (customer_id)
) ;

CREATE TABLE Employees (
    employee_id integer  NOT NULL,
    first_name varchar2(20)  NOT NULL,
    last_name varchar2(20)  NOT NULL,
    job_id integer  NOT NULL,
    CONSTRAINT Employees_pk PRIMARY KEY (employee_id)
) ;

CREATE TABLE Genres (
    genre_id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    CONSTRAINT Genres_pk PRIMARY KEY (genre_id)
) ;

CREATE TABLE Jobs (
    job_id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    CONSTRAINT Jobs_pk PRIMARY KEY (job_id)
) ;

CREATE TABLE Orders (
    order_id integer  NOT NULL,
    customer_id integer  NOT NULL,
    employee_id integer  NOT NULL,
    book_id integer  NOT NULL,
    order_date date  NOT NULL,
    total_price number(6,2)  NOT NULL,
    CONSTRAINT Orders_pk PRIMARY KEY (order_id)
) ;

/* Referencje, FK */

ALTER TABLE Books ADD CONSTRAINT Books_Genre
    FOREIGN KEY (genre_id)
    REFERENCES Genres (genre_id);

ALTER TABLE Employees ADD CONSTRAINT Employees_Positions
    FOREIGN KEY (job_id)
    REFERENCES Jobs (job_id);

ALTER TABLE Orders ADD CONSTRAINT Orders_Books
    FOREIGN KEY (book_id)
    REFERENCES Books (book_id);

ALTER TABLE Orders ADD CONSTRAINT Orders_Customers
    FOREIGN KEY (customer_id)
    REFERENCES Customers (customer_id);

ALTER TABLE Orders ADD CONSTRAINT Orders_Employees
    FOREIGN KEY (employee_id)
    REFERENCES Employees (employee_id);
