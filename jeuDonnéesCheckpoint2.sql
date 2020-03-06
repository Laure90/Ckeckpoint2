USE Checkpoint2
GO

INSERT INTO Courses (CourseName) VALUES ('C#'), ('PHP'), ('SQL')
GO

INSERT INTO Agenda (EventName, DescriptionEvent, StartDate, EndDate) VALUES ('PHP', 'Begin the PHP session', '20200302', '20200831'),
																			('CSharp', 'Begin the CSharp session', '20191209', '20200507'),
																			('SQL', 'Begin the SQL session', '20200406', '20200424'),
																			('CSharp', 'Begin the CSharp session', '20200601', '20200831'),
																			('CSharp', 'Begin the CSharp session', '20200601', '20200831'),
																			('SQL', 'Begin the SQL session', '20200406', '20200424')

INSERT INTO LeadTrainer (LeadTrainerName, FK_ID_Course) VALUES ('Bob', 1),
																('John', 2),
																('Jane', 3)
GO

INSERT INTO Trainers (TrainerName, FK_ID_Course, FK_ID_leadTrainer) VALUES ('Bobby', 1, 1),
																		('Robert', 1,1),
																		('Johnny', 2,2),
																		('Jeanne', 2,2),
																		('John Doe', 3,3)
GO

INSERT INTO Students (StudentName, FK_ID_Course, FK_ID_Trainer, FK_ID_Agenda) VALUES ('John', 1, 1, 2),
																					('Jane', 1,1,2),
																					('John', 1, 1, 2),
																					('Jane', 1,1,2),
																					('John', 2, 3, 1),
																					('Jane', 2, 3, 1),
																					('Jane', 2, 3, 1)
GO

INSERT INTO Expeditions (ExpeditionName, FK_ID_Course) VALUES ('POO', 1), ('DataBase', 3), ('Html and CSS', 2)

INSERT INTO Quests (QuestName, FK_ID_Expedition) VALUES ('quest1', 1), ('quest2', 1),
														('quest1', 2), ('quest2', 2),
														('quest3', 2), ('quest4', 2),
														('quest1', 3), ('quest2', 3),
														('quest3', 3)
GO


