USE [eServe]
GO
/****** Object:  View [dbo].[vwOpportunityByQuarter]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwOpportunityByQuarter]
as
select OpportunityId,Name,JobDescription,QuarterName 
from Opportunity
join Quarter
on Opportunity.QuarterID= Quarter.QuarterID
GO
