USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetCourseEvaluationByStudent]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  procedure [dbo].[spGetCourseEvaluationByStudent]
As
Begin
Select
o.OpportunityID,
o.Name,
StudentEvaluation as CourseEvaluationByStudent,
s.StudentID,
s.FirstName,
s.LastName,
SectionName
from Opportunity o 
inner join SignUpFor
on o.OpportunityID = SignUpFor.OpportunityID
inner join
Student s
on SignUpFor.StudentID = s.StudentID
inner join
vwStudentBySection ss
on ss.StudentID = s.StudentID
End

GO
