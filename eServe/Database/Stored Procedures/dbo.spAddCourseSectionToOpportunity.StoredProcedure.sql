USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spAddCourseSectionToOpportunity]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[spAddCourseSectionToOpportunity]	
	@OpportunityID int,
	@CourseSectionIDs varchar(1000)	
AS
/****************************************************************************
This proc is to add the assigned sections to one opportunity to the table
*****************************************************************************/
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO 
	Opportunity_Section (OpportunityID, SectionID)
	SELECT 
		@OpportunityID,
		splitData
	FROM dbo.fnSplitString(@CourseSectionIDs,';') --call function fnSplitString to split the strings to table
	WHERE 		 
		Convert(varchar(10),@OpportunityID) + '_' + splitData
		NOT IN
		(SELECT Convert(varchar(10),OpportunityID) + '_' + Convert(varchar(10),SectionID) FROM Opportunity_Section)

END





GO
