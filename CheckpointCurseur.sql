DECLARE @StudentID INT
DECLARE Students_Cursor CURSOR SCROLL FOR
   SELECT ID_Student FROM Students
OPEN Students_Cursor
FETCH FIRST FROM Students_Cursor INTO @StudentID
WHILE @@FETCH_STATUS = 0
   BEGIN
      
   END
CLOSE Students_Cursor
DEALLOCATE Students_Cursor
GO
