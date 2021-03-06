USE [eServe]
GO
/****** Object:  Table [dbo].[TimeEntries]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeEntries](
	[Date] [date] NOT NULL,
	[OpportunityID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[CPPID] [int] NOT NULL,
	[PartnerApprovedHours] [int] NULL,
	[WorkDateEntry] [date] NOT NULL,
	[HoursVolunteered] [int] NOT NULL,
 CONSTRAINT [PK_TimeEntries] PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[OpportunityID] ASC,
	[StudentID] ASC,
	[CPPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[TimeEntries] ADD  CONSTRAINT [DF_CPP]  DEFAULT ('N') FOR [PartnerApprovedHours]
GO
ALTER TABLE [dbo].[TimeEntries]  WITH CHECK ADD  CONSTRAINT [FK_CPP] FOREIGN KEY([CPPID])
REFERENCES [dbo].[CommunityPartnersPeople] ([CPPID])
GO
ALTER TABLE [dbo].[TimeEntries] CHECK CONSTRAINT [FK_CPP]
GO
ALTER TABLE [dbo].[TimeEntries]  WITH CHECK ADD  CONSTRAINT [FK_TimeDateApproval] FOREIGN KEY([OpportunityID], [StudentID])
REFERENCES [dbo].[SignUpFor] ([OpportunityID], [StudentID])
GO
ALTER TABLE [dbo].[TimeEntries] CHECK CONSTRAINT [FK_TimeDateApproval]
GO
