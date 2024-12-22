USE gold_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gold @ViewName nvarchar(100)
AS 
BEGIN
    DECLARE @statement VARCHAR(MAX)
    SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
        SELECT
            *
        FROM
            OPENROWSET(
                BULK ''https://adventworkstorageaccount.dfs.core.windows.net/gold/Sales/' + @ViewName + '/'',
                FORMAT = ''DELTA''
            ) AS [result]'

    EXEC (@statement)
END
GO