SELECT 
    t.name AS tableNames, 
    s.name AS schemaNames
FROM 
    sys.tables AS t
INNER JOIN 
    sys.schemas AS s
    ON t.schema_id = s.schema_id
WHERE 
    s.name = 'Sales'