USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[GetOpportunityType]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOpportunityType]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		TypeID as OpportunityTypeId,
		Name		
	FROM
		OpportunityType
END



GO
