USE [eServe]
GO
/****** Object:  Table [dbo].[Student_FocusArea]    Script Date: 3/24/2015 11:11:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_FocusArea](
	[StudentID] [int] NOT NULL,
	[FocusAreaID] [int] NOT NULL,
 CONSTRAINT [PK_StudentFocus] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[FocusAreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
