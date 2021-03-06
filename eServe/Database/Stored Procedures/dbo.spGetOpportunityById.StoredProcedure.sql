USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunityById]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[spGetOpportunityById]
	@OpportunityId int
AS
Begin
  SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		OpportunityID,
		Name,
		Location,
		DateOfCreation,
		JobDescription,
		Requirements,
		TimeCommittment,
		TotalNumberOfSlots,
		OrientationDate,
		Status,
		ResumeRequired,
		'' AS SupervisorEmail,
		MinimumAge,
		CRCRequiredByPartner,
		CRCRequiredBySU,
		LinkToOnlineApp,	
		TypeID,
		CPID,
		CPPID,
		QuarterID,		
		JobHours,
		DistanceFromSU
	FROM
		Opportunity  
	WHERE 
		OpportunityId = @OpportunityId
End



GO
