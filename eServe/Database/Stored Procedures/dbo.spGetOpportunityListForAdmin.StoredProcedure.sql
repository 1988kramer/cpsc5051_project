USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunityListForAdmin]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spGetOpportunityListForAdmin]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		OpportunityID,
		cp.OrganizationName,
		o.Name,				
		TotalNumberOfSlots,	
		Status,		
		ot.Name AS OpportunityTypeName,		
		cpp.FirstName + ' ' + cpp.LastName AS Supervisor,
		SupervisorEmail,
		DateOfCreation AS DateApproved		
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
END
GO
