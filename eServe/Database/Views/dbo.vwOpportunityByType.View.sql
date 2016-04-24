USE [eServe]
GO
/****** Object:  View [dbo].[vwOpportunityByType]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwOpportunityByType]
as
select OpportunityId, Opportunity.Name as Name,Opportunity.TypeID as TypeID from Opportunity
join OpportunityType
on Opportunity.TypeID = OpportunityType.TypeID
GO
