USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetEthinicity]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spGetEthinicity]
	As
	Begin
	Select EthinicityID,Description from Ethinicity
	End

GO
