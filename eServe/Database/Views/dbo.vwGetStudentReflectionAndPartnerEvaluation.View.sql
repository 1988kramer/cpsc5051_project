USE [eServe]
GO
/****** Object:  View [dbo].[vwGetStudentReflectionAndPartnerEvaluation]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vwGetStudentReflectionAndPartnerEvaluation]
as
select SignUpFor.StudentID as StudentID, SignUpFor.OpportunityID as OpportunityID,StudentReflection,PartnerEvaluation,SignUpFor.CPPID as CPPID from SignUpFor
join Student
on Student.StudentID = SignUpFor.StudentID 
join Opportunity
on Opportunity.OpportunityID = SignUpFor.OpportunityID
join CommunityPartnersPeople
on CommunityPartnersPeople.CPPID = SignUpFor.CPPID
GO
