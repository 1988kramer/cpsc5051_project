USE [eServe]
GO
/****** Object:  View [dbo].[vwOpportunityByFocusArea]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwOpportunityByFocusArea]
as
select Opportunity.OpportunityId as OpportunityId,Name, FocusArea.FocusAreaId as FocusAreaId,AreaName from Opportunity
join Opportunity_FocusArea
on Opportunity.OpportunityId = Opportunity_FocusArea.OpportunityId
join FocusArea
on FocusArea.FocusAreaId = Opportunity_FocusArea.FocusAreaId
GO
