USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetClassInfo]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spGetClassInfo]
   @CourseID int
   as
   Begin
    Select ShortName,CourseName, CourseID from Class
	where CourseID = @CourseID
	End

GO
