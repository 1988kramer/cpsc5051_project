USE [eServe]
GO
/****** Object:  View [dbo].[vwOpportunityByCommunityPartner]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View [dbo].[vwOpportunityByCommunityPartner]
as
select OpportunityId,Name,Location,DateOfCreation, OrganizationName
from Opportunity
join CommunityPartners
on Opportunity.CPID= CommunityPartners.CPID
GO
