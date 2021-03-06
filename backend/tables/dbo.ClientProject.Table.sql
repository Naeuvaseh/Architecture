USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[ClientProject]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProject](
	[ClientID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
 CONSTRAINT [PK_ClientProject] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [FK_ClientProject_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [FK_ClientProject_Client]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [FK_ClientProject_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ID])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [FK_ClientProject_Project]
GO
