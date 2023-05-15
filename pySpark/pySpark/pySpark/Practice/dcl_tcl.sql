-- **********************  CREATE, GRANT, INSERT, UPDATE, COMMIT,ROLLBACK, DELETE  **********************

-- use dcl_db;

-- SET AUTOCOMMIT = OFF;

-- CREATE TABLE if not exists temp (
-- 	num INT,
--     letter CHAR(1)
--     );

-- INSERT INTO temp VALUES(1, 'A');
-- INSERT INTO temp VALUES(2, 'B');

-- SELECT * FROM temp;

-- GRANT ALL on dcl_db.* to 'user1';

-- UPDATE temp SET letter = 'C' WHERE num = 1; -- updated row 1 to 'C'

-- SELECT * FROM temp;

-- INSERT INTO temp VALUES(3, 'C');
-- INSERT INTO temp VALUES(4, 'D');
-- INSERT INTO temp VALUES(5, 'E');
-- INSERT INTO temp VALUES(6, 'F');

-- -- ALTER TABLE temp DROP COLUMN word;

-- SELECT * FROM temp;

-- UPDATE temp SET letter = 'A' WHERE num = 1; -- updated row 1 back to 'A'

-- SELECT * FROM temp;

-- ALTER TABLE temp ADD COLUMN word VARCHAR(255);

-- SELECT * FROM temp;

-- UPDATE temp SET word = 'Absolute' WHERE num = 1;
-- UPDATE temp SET word = 'Break' WHERE num = 2;
-- UPDATE temp SET word = 'Concat' WHERE num = 3;
-- UPDATE temp SET word = 'Dependency' WHERE num = 4;
-- UPDATE temp SET word = 'Extract' WHERE num = 5;
-- UPDATE temp SET word = 'Filter' WHERE num = 6;

-- COMMIT;

-- SELECT * FROM temp;

-- UPDATE temp SET word = 'KJVNEINIUE' WHERE num = 1;

-- SELECT * FROM temp;

-- UPDATE temp SET word = 'pwrjgfij' WHERE num = 1;

-- SELECT * FROM temp;

-- ROLLBACK;

-- SELECT * FROM temp;

-- UPDATE temp SET word = 'Absolute' WHERE num = 1;

-- COMMIT;

-- SELECT * FROM temp;

-- DELETE FROM temp;

-- SELECT * FROM temp;

-- ROLLBACK;

-- SELECT * FROM temp;
