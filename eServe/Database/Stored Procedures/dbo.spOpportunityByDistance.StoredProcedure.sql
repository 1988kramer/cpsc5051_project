USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spOpportunityByDistance]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spOpportunityByDistance]
@DistanceFromSU varchar (8)
as
Begin
  Select OpportunityID,Name,Location,DistanceFromSU from Opportunity where DistanceFromSU = @DistanceFromSU
  End

GO
