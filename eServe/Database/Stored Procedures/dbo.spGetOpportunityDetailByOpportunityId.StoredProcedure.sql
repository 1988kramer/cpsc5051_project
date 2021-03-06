USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunityDetailByOpportunityId]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[spGetOpportunityDetailByOpportunityId]
	@OpportunityId int
AS
Begin
  SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT CP.[CPID]
		,[OpportunityID]
      ,[OrganizationName]
      ,[WorkDescription] OrganizationDesc
	  ,[Name] OpportunityName
	  ,[JobDescription] OpportunityDesc
	  ,[Address] Location
	  ,[TimeCommittment]
	  ,CPP.[FirstName]+ ', ' + CPP.[LastName] SiteSupervisorName
	  ,[SupervisorEmail]
	  ,[CRCRequiredByPartner]
	  ,[MinimumAge] 
	  ,[ResumeRequired]
      ,[Website] Link
      ,[MainPhone]           
  FROM [dbo].[CommunityPartners] CP
  INNER JOIN [dbo].[Opportunity] O ON (O.CPID=CP.CPID)
  INNER JOIN [dbo].[CommunityPartnersPeople] CPP ON (CPP.CPPID=O.CPPID)
  WHERE [OpportunityID]=@OpportunityId

End


GO
