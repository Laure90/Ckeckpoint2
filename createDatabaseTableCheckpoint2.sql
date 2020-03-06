CREATE DATABASE Checkpoint2
GO

USE Checkpoint2
GO

CREATE TABLE Courses (
	ID_Course INT PRIMARY KEY IDENTITY (1,1),
	CourseName VARCHAR(50) NOT NULL
	);
GO

CREATE TABLE Expeditions (
	ID_Expedition INT PRIMARY KEY IDENTITY (1,1),
	ExpeditionName VARCHAR(80) NOT NULL,
	FK_ID_Course INT FOREIGN KEY (FK_ID_Course) REFERENCES Courses(ID_Course)
	);
GO

CREATE TABLE Quests (
	ID_Quest INT PRIMARY KEY IDENTITY (1,1),
	QuestName VARCHAR(80) NOT NULL,
	FK_ID_Expedition INT FOREIGN KEY (FK_ID_Expedition) REFERENCES Expeditions(ID_Expedition)
	);
GO

CREATE TABLE Agenda (
	ID_Agenda INT PRIMARY KEY IDENTITY (1,1),
	EventName VARCHAR(60) NOT NULL,
	DescriptionEvent VARCHAR (270),
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL
	);

CREATE TABLE LeadTrainer (
	ID_leadTrainer INT PRIMARY KEY IDENTITY (1,1),
	LeadTrainerName VARCHAR(50) NOT NULL,
	FK_ID_Course INT FOREIGN KEY (FK_ID_Course) REFERENCES Courses(ID_Course),
	FK_ID_Agenda INT FOREIGN KEY (FK_ID_Agenda) REFERENCES Agenda(ID_Agenda)
	);
GO

CREATE TABLE Trainers (
	ID_Trainer INT PRIMARY KEY IDENTITY (1,1),
	TrainerName VARCHAR(50) NOT NULL,
	FK_ID_leadTrainer INT FOREIGN KEY (FK_ID_leadTrainer) REFERENCES LeadTrainer(ID_leadTrainer),
	FK_ID_Course INT FOREIGN KEY (FK_ID_Course) REFERENCES Courses(ID_Course),
	FK_ID_Agenda INT FOREIGN KEY (FK_ID_Agenda) REFERENCES Agenda(ID_Agenda)
	);
GO

CREATE TABLE Students (
	ID_Student INT PRIMARY KEY IDENTITY (1,1),
	StudentName VARCHAR(50) NOT NULL,
	FK_ID_Trainer INT FOREIGN KEY (FK_ID_Trainer) REFERENCES Trainers(ID_Trainer),
	FK_ID_Course INT FOREIGN KEY (FK_ID_Course) REFERENCES Courses(ID_Course),
	FK_ID_Agenda INT FOREIGN KEY (FK_ID_Agenda) REFERENCES Agenda(ID_Agenda)
	);
GO





