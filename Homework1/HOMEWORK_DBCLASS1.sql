USE [SEDCACADEMYDB]

CREATE TABLE [Students](
	[ID][int]IDENTITY(1,1)NOT NULL,
	[FirstName][nvarchar](25)NULL,
	[LastName][nvarchar](25)NULL,
	[DateOfBirth][date]NULL,
	[EnrolledDate][date]NULL,
	[Gender][nvarchar](25)NULL,
	[NationalIDNumber][int]NULL,
	[StudentCardNumber][int]NULL
	CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([ID]ASC)
)

CREATE TABLE [Teacher](
	[ID][int]IDENTITY(1,1)NOT NULL,
	[FirstName][nvarchar](25)NULL,
	[LastName][nvarchar](25)NULL,
	[DateOfBirth][date]NULL,
	[AcademicRank][nvarchar](30)NULL,
	[HireDate][date]
	CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED([ID]ASC)
)

CREATE TABLE [Grade](
	[ID][int]IDENTITY (1,1)NOT NULL,
	[StudentID][smallint]NULL,
	[CourseID][nvarchar](50)NULL,
	[TeacherID][nvarchar](50)NULL,
	[Grade][nchar]NULL,
	[Comment][nvarchar]NULL,
	[CreatedDate][date]NULL,
	CONSTRAINT [PK_Grade]PRIMARY KEY CLUSTERED([ID]ASC)
)

CREATE TABLE[Course](
	[ID][int]IDENTITY(1,1)NOT NULL,
	[Name][nvarchar](100)NULL,
	[Credit][int]NULL,
	[AcademicYear][nvarchar](10)NULL,
	[Semester][nvarchar](100)NULL,
	CONSTRAINT [PK_Course]PRIMARY KEY CLUSTERED ([ID]ASC)
)

CREATE TABLE [GradeDetails](
	[ID][int] IDENTITY(1,1)NOT NULL,
	[GradeID][int]NULL,
	[AchievmentTypeID][nvarchar](100)NULL,
	[AchievmentPoints][smallint]NULL,
	[AchievmentMaxPoints][smallint]NULL,
	[AchievmentDate][datetime]NULL,
	CONSTRAINT[PK_GradeDetails]PRIMARY KEY CLUSTERED([ID]ASC)
)

CREATE TABLE [AchievmentType](
	[ID][int]IDENTITY(1,1)NOT NULL,
	[Name][nvarchar](50)NULL,
	[Description][nvarchar](100)NULL,
	[ParticipationRate][int]NULL,
	CONSTRAINT [PK_AchievmentType]PRIMARY KEY CLUSTERED([ID]ASC)
)