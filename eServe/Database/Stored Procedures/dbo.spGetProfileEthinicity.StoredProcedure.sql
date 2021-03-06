USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetProfileEthinicity]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetProfileEthinicity]	
	@StudentId int  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT S.[StudentID]
	  ,E.Description As 'Ethinicity'      	        
  FROM [dbo].[Student] S 
  LEFT JOIN [dbo].[Student_Ethinicity] SE ON (SE.StudentID=S.StudentID)
  INNER JOIN [dbo].[Ethinicity] E ON (E.EthinicityID=SE.EthinicityID)   
  where S.StudentID=@StudentId
	
END








GO
