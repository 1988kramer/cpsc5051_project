USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spAddOpportunity]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/****************Stored Procedure for adding opportunity ***************/
CREATE PROCEDURE [dbo].[spAddOpportunity]	
	@Name varchar(50)
   ,@Location varchar(50)
   ,@JobDescription varchar(max)	
   ,@Requirements varchar(1000)
   ,@TimeCommittment varchar(9)
   ,@TotalNumberOfSlots int
   ,@OrientationDate datetime
   ,@ResumeRequired varchar(3)   
   ,@MinimumAge varchar(8)
   ,@CRCRequiredByPartner varchar(3)
   ,@CRCRequiredBySU varchar(3)
   ,@LinkToOnlineApp varchar(200)
   ,@TypeID int
   ,@CPID int
   ,@CPPID int
   ,@QuarterID int
   ,@JobHours varchar(20)
   ,@DistanceFromSU varchar(8)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Into Opportunity
	(Name
	, Location
	, JobDescription
	, Requirements
	, TimeCommittment
	, TotalNumberOfSlots
	, OrientatioNDate
	, ResumeRequired	
	, MinimumAge
	, CRCRequiredByPartner
	, CRCRequiredBySU
	, LinkToOnlineApp
	, TypeID
	, CPID
	, CPPID
	, QuarterID
	, JobHours
	, DistanceFromSU
	, DateOfCreation
	, Status
	, SupervisorEmail
	)
	Values
	(@Name
	, @Location
	, @JobDescription
	, @Requirements
	, @TimeCommittment
	, @TotalNumberOfSlots
	, @OrientatioNDate
	, @ResumeRequired	
	, @MinimumAge
	, @CRCRequiredByPartner
	, @CRCRequiredBySU
	, @LinkToOnlineApp
	, @TypeID
	, @CPID
	, @CPPID
	, @QuarterID
	, @JobHours
	, @DistanceFromSU
	, GetDate()
	, 'Pending'
	, 'N/A')	
END
GO
