USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunityList]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spGetOpportunityList]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		OpportunityID,
		o.Name,
		Location,
		DateOfCreation,
		JobDescription,
		Requirements,
		TimeCommittment,
		TotalNumberOfSlots,
		OrientationDate,
		Status,
		ResumeRequired,		
		MinimumAge,
		CRCRequiredByPartner,
		CRCRequiredBySU,
		LinkToOnlineApp,
		ot.Name AS OpportunityTypeName,
		q.QuarterName,
		cp.OrganizationName,
		cpp.FirstName + ' ' + cpp.LastName AS Supervisor,
		cpp.EmailId as SupervisorEmail,
		DateOfCreation AS DateApproved,
		JobHours,
		DistanceFromSU as DistanceFromSU
	FROM
		Opportunity o
	INNER JOIN
		OpportunityType ot
	ON
		o.TypeID = ot.TypeID
	INNER JOIN
		CommunityPartners cp
	ON
		o.CPID = cp.CPID
	INNER JOIN
		[dbo].[CommunityPartnersPeople] cpp
	ON
		o.CPPID = cpp.CPPID
	INNER JOIN
		Quarter q
	ON
		o.QuarterID = q.QuarterID

END



GO
