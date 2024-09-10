select * from tblName;

CREATE PROCEDURE uspInsertName
@FullName VARCHAR(50) = NULL
AS
BEGIN
	INSERT INTO tblName(FullName)
	VALUES(@FullName)
END;

CREATE PROCEDURE UspGetGriddata
AS
BEGIN
SELECT [ID], [FullName] FROM tblName
END;

delete From tblName
where ID = 6;