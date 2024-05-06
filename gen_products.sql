
DECLARE @numRows int,@i int
SET @numRows = 100
SET @i=1

WHILE @i<@numRows
BEGIN
    INSERT INTO products(name,description,weight)
      SELECT top 1000 CAST(NEWID() AS NVARCHAR(40)), CAST(NEWID() AS NVARCHAR(40)), ROUND(RAND(100)*1000, 2)
        FROM master.dbo.spt_values
    SET @i=@i+1
    WAITFOR DELAY '00:00:05';
END
