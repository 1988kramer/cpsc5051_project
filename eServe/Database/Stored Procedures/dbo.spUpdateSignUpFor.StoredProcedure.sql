USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateSignUpFor]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spUpdateSignUpFor]
   @StudentID int,
   @OpportunityID int,
   @CPPID int,
   @SignUpStatus nvarchar (8)
   /*
   @StudentReflection nvarchar (max),
   @PartnerEvaluation nvarchar (max),
   @StudentEvaluation nvarchar (max)
   */
   as
   Begin
   Update SignUpFor Set SignUpStatus = @SignUpStatus
   /*
     StudentReflection = @StudentReflection,
	 PartnerEvaluation = @PartnerEvaluation,
	 StudentEvaluation = @StudentEvaluation
	*/
   where StudentID = @StudentID 
   and 
         OpportunityID = @OpportunityID
  and 
         CPPID = @CPPID

   End

GO
