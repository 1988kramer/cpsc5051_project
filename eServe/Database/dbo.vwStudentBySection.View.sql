USE [eServe]
GO
/****** Object:  View [dbo].[vwStudentBySection]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vwStudentBySection]
as
select Student.StudentID as StudentID, Student.FirstName as FirstName,Student.LastName as LastName,Section.SectionID as SectionID, SectionName from Student
join Student_Section
on Student.StudentID = Student_Section.StudentID
join Section
on Section.SectionID = Student_Section.SectionID
GO
