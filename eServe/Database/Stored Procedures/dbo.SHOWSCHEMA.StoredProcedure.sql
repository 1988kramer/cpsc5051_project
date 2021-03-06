USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[SHOWSCHEMA]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SHOWSCHEMA]
	@schemaname		varchar(max)
AS
BEGIN

DECLARE @tablename VARCHAR(max)

DECLARE load_cursor CURSOR FOR 
       SELECT table_name 
	   from information_schema.tables 
       where table_schema = @schemaname
	   and table_type = 'BASE TABLE'

OPEN load_cursor 
FETCH NEXT FROM load_cursor INTO @tablename 

SELECT GETDATE() AS CurrentTime, SYSTEM_USER as 'User'

WHILE @@FETCH_STATUS = 0 
BEGIN 
       SELECT @TABLENAME as TableName
	   SELECT COLUMN_NAME, DATA_TYPE 
		FROM INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = @TABLENAME

		SELECT
			trigger_name   = st.name
			,trigger_text   = sc.text
			,create_date    = st.create_date
		FROM sys.triggers st
			JOIN sysobjects so
				ON st.parent_id = so.id
			JOIN syscomments sc
				ON sc.id = st.[object_id]
		WHERE so.name = @TABLENAME
 
       FETCH NEXT FROM load_cursor INTO @TABLENAME 
END 

CLOSE load_cursor 
DEALLOCATE load_cursor 
END

GO
