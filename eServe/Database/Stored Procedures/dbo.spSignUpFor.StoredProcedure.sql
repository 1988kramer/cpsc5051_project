USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spSignUpFor]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create Procedure [dbo].[spSignUpFor]
		 (
		 @StudentID int,
		 @OpportunityID int
		 )
		 As
		 Begin
		 Select @StudentID,@OpportunityID,CPPID,SignUpStatus,PartnerEvaluation,StudentReflection,StudentEvaluation
		 from SignUpFor
		 where StudentID = @StudentID
		 and OpportunityID = @OpportunityID
		 End

GO
