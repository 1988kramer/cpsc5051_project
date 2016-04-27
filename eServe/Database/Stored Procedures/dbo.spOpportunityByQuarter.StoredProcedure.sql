USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spOpportunityByQuarter]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure  [dbo].[spOpportunityByQuarter]
  @QuarterID int
  As
  Begin
  Select OpportunityId,Name, QuarterID from Opportunity
  where 
  QuarterID = @QuarterID
  End

GO
