USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spRegisterStudentOpportunityTEST]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spRegisterStudentOpportunityTEST]
	@StudentId int, @OpportunityId int
AS
Begin
	SET NOCOUNT ON;
	DECLARE @CPPID NVARCHAR(30)  -- ID of the community partner person assigned
	-- Retrieve the ID of the community partner person assigned to this opportunity
	SELECT @CPPID =  CPPID 
			FROM [dbo].[Opportunity] 
			WHERE OpportunityId=@OpportunityId

	BEGIN
	-- First make sure the student is not already signed up
	-- for this opportunity
		IF EXISTS (SELECT *
			FROM [dbo].[SignUpFor]
			WHERE [StudentID]=@StudentId
				AND [CPPID]=@CPPID
				AND [OpportunityID]=@OpportunityId)
		-- if this comes back true, the student is already enrolled
		RETURN 1  -- CALLER should check return value - if 1 student already signed up
		else -- student is not already assigned
		begin
		-- first make sure there is still an open slot
		-- and lock the row to make sure no one else gets it
			begin transaction
			declare	@slots int
			-- this statement sees if there are any slots available 
			--AND locks the opportunity row so no one else can change it
			select @slots = totalnumberofslots 
				from [dbo].[Opportunity]  WITH (updlock)
				where opportunityid = @opportunityid;
			if (@slots = 0 ) -- there are no slots left, rollback with error message
				begin
					rollback
					return 2 -- 2 indicates NOT ADDED - no slots left open
				end
			-- ELSE
			-- there are slots so go ahead and do the insert
			-- this will fire the trigger on OPPORTUNITY to decrement slots
			INSERT INTO [dbo].[SignUpFor] ([StudentID]
								  ,[CPPID]
								  ,[OpportunityID]
								  ,[SignUpStatus])
				VALUES (@StudentId, @CPPID, @OpportunityId, 'Pending')
			commit  -- commit the transaction and release the locks
		end
	END
		return 0 -- 0 indicates success
End

GO
