USE [eServe]
GO
/****** Object:  View [dbo].[vwSignUpStatus]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vwSignUpStatus]
as 
select SignUpFor.StudentID as StudentID, SignUpFor.OpportunityID as OpportunityID,SignUpStatus from SignUpFor
join Student
on Student.StudentID = SignUpFor.StudentID 
join Opportunity
on Opportunity.OpportunityID = SignUpFor.OpportunityID
GO
