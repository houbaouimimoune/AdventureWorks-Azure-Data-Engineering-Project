USE master;
GO

CREATE LOGIN [powerbi_user] 
WITH PASSWORD = 'powerbi123@';
GO

USE gold_db;
GO
CREATE USER [powerbi_user] FOR LOGIN [powerbi_user];
GO

ALTER ROLE db_datareader ADD MEMBER [powerbi_user];