USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spOpportunityByType]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [dbo].[spOpportunityByType]
  @OpportunityType varchar (20)
  as
  Begin
       Select OpportunityId, Name,TypeID from Oppotunity where TypeID = @OpportunityType
	   End
GO
