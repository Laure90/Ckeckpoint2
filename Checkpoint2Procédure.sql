DROP PROCEDURE IF EXISTS sp_GetStudentList
GO

CREATE PROCEDURE sp_GetStudentList
	@TrainerName VARCHAR(50),
	@StudentList VARCHAR(50) OUTPUT
   AS
   DECLARE @StudentID INT
	DECLARE Students_Cursor CURSOR SCROLL FOR
		SELECT ID_Student FROM Students
	OPEN Students_Cursor
	FETCH FIRST FROM Students_Cursor INTO @StudentID
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @StudentList = Students.StudentName FROM Students INNER JOIN Trainers ON Trainers.ID_Trainer = Students.FK_ID_Trainer 
		WHERE Trainers.TrainerName = @TrainerName
		FETCH NEXT FROM Students_Cursor INTO @StudentID
	END
	FETCH NEXT FROM Students_Cursor INTO @StudentID
CLOSE Students_Cursor
DEALLOCATE Students_Cursor
GO

DECLARE @ListOfTrainer VARCHAR(50)
EXECUTE sp_GetStudentList 
		@TrainerName = 'Bobby',
		@StudentList = @ListOfTrainer OUTPUT
PRINT @ListOfTrainer
GO



SELECT Students.StudentName FROM Students INNER JOIN Trainers ON Trainers.ID_Trainer = Students.FK_ID_Trainer
WHERE Trainers.TrainerName = 'Bobby'