USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spStudentInfo]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	   Create procedure [dbo].[spStudentInfo]
	   @FirstName  varchar (15),
	   @LastName   varchar (15)
	   as
	   Begin

	     Select  StudentID,FirstName,LastName,PreferedName,EmailID,LastBackGroundCheck from Student
		 where FirstName = @FirstName and
		       LastName = @LastName
		 End 

GO
