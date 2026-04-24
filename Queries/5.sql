CREATE TABLE my_employee (
  id NUMBER(4) NOT NULL,
  last_name VARCHAR2(25),
  first_name VARCHAR(25),
  userid VARCHAR2(8),
  salary NUMBER(9, 2)
);

Describe the Table:
DESC my_employee;

INSERT INTO my_employee VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);

INSERT INTO my_employee (id, last_name, first_name, userid, salary)
VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);

SELECT * FROM my_employee;

INSERT INTO my_employee(id, last_name, first_name, userid, salary)
VALUES (&id, '&last_name', '&first_name', '&userid', &salary);

SELECT * FROM my_employee;

COMMIT;

UPDATE my_employee SET last_name = 'Drexler' WHERE id = 3;

UPDATE my_employee SET salary = 1000 WHERE salary < 900;

SELECT * FROM my_employee;

DELETE FROM my_employee WHERE last_name = 'Dancs' AND first_name = 'Betty';

SELECT * FROM my_employee;

COMMIT;

SELECT * FROM my_employee;

SAVEPOINT before_delete;

DELETE FROM my_employee;

SELECT * FROM my_employee;

ROLLBACK TO before_delete;

SELECT * FROM my_employee;

COMMIT;

INSERT INTO my_employee (id, last_name, first_name, userid, salary)
VALUES (&id, '&last_name', '&first_name',
        LOWER(SUBSTR('&first_name', 1, 1) || SUBSTR('&last_name', 1, 7)),
        &salary);

SELECT * FROM my_employee;

DROP TABLE MY_EMPLOYEE;