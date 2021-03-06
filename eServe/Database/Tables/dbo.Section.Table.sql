USE [eServe]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 3/24/2015 11:11:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[ProfessorID] [int] NOT NULL,
	[QuarterID] [int] NOT NULL,
	[RoomNumber] [nvarchar](70) NOT NULL,
	[ClassHours] [varchar](20) NOT NULL,
	[NumberOfSlots] [int] NOT NULL,
	[SectionName] [varchar](50) NULL,
 CONSTRAINT [PK_SectionID] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
 CONSTRAINT [UQ_Section] UNIQUE NONCLUSTERED 
(
	[RoomNumber] ASC,
	[ClassHours] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Section] ADD  CONSTRAINT [DF_NumberOfSlots]  DEFAULT ((0)) FOR [NumberOfSlots]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Class] ([CourseID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_CourseID]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorID] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professor] ([ProfessorID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_ProfessorID]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_QuarterID] FOREIGN KEY([QuarterID])
REFERENCES [dbo].[Quarter] ([QuarterID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_QuarterID]
GO
