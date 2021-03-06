USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[ProductArea]    Script Date: 4/26/2018 8:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductArea](
	[AreaID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_ProductArea] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductArea]  WITH CHECK ADD  CONSTRAINT [FK_ProductArea_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([ID])
GO
ALTER TABLE [dbo].[ProductArea] CHECK CONSTRAINT [FK_ProductArea_Area]
GO
ALTER TABLE [dbo].[ProductArea]  WITH CHECK ADD  CONSTRAINT [FK_ProductArea_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductArea] CHECK CONSTRAINT [FK_ProductArea_Product]
GO
