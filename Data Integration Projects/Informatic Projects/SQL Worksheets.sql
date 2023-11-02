USE Hexaware;

SELECT * FROM ADMIN.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'Base Table';

CREATE TABLE emptb(
	Ename VARCHAR(100),
	EmpNo INT
);

SELECT * INTO emptb_trg
FROM emptb
WHERE 1 = 2;

INSERT INTO [dbo].[emptb] VALUES('stev', 100);
INSERT INTO [dbo].[emptb] VALUES('methew', 100);
INSERT INTO [dbo].[emptb] VALUES('john', 101);
INSERT INTO [dbo].[emptb] VALUES('tom', 101);

SELECT * FROM [dbo].[emptb];
SELECT * FROM [dbo].[emptb_trg];