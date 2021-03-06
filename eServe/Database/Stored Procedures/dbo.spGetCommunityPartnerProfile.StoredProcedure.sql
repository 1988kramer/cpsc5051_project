USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetCommunityPartnerProfile]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCommunityPartnerProfile]	
	@CPID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		CPID AS CommunityPartnerID,
		OrganizationName,
		Address,
		Website,
		MainPhone,
		MissionStatement,
		WorkDescription
			
	From CommunityPartners
	WHERE
		CPID = @CPID
END

GO
