USE [eServe]
GO
/****** Object:  View [dbo].[vwTotalVolunteeredHours]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  Create View [dbo].[vwTotalVolunteeredHours]
  As
  Select OpportunityID,StudentID,sum(HoursVolunteered) as TotalHours,
  sum(PartnerApprovedHours) as PartnerApprovedHours
  From TimeEntries
  Group BY OpportunityID,StudentID
GO
