USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetCommunityPartnerOpportunityList]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[spGetCommunityPartnerOpportunityList]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		cp.CPID,
		cp.OrganizationName AS CommunityPartnerName,
		o.Status,
		count(*) as OpportunityCount
	FROM 
		Opportunity o
	JOIN 
		CommunityPartners cp
	ON 
		o.CPID = cp.CPID
	GROUP BY 
		cp.CPID, o.Status, cp.OrganizationName
END



GO
