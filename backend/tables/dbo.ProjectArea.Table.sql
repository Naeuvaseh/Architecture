USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[ProjectArea]    Script Date: 4/26/2018 8:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectArea](
	[ProjectID] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
 CONSTRAINT [PK_ProjectArea] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProjectArea]  WITH CHECK ADD  CONSTRAINT [FK_ProjectArea_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([ID])
GO
ALTER TABLE [dbo].[ProjectArea] CHECK CONSTRAINT [FK_ProjectArea_Area]
GO
ALTER TABLE [dbo].[ProjectArea]  WITH CHECK ADD  CONSTRAINT [FK_ProjectArea_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ID])
GO
ALTER TABLE [dbo].[ProjectArea] CHECK CONSTRAINT [FK_ProjectArea_Project]
GO
