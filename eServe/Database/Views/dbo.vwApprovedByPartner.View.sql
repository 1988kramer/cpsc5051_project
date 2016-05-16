USE [eServe]
GO
/****** Object:  View [dbo].[vwApprovedByPartner]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vwApprovedByPartner]
as
select TimeEntries.OpportunityID as OpportunityID, TimeEntries.StudentID as StudentID,Date, PartnerApprovedHours from TimeEntries
join SignUpFor
on TimeEntries.OpportunityID = SignUpFor.OpportunityID and
   TimeEntries.StudentID =  SignUpFor.StudentID
GO
