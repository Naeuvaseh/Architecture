USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FN] [nvarchar](50) NOT NULL,
	[LN] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[Email] [nvarchar](50) NULL,
	[ManufacturerID] [int] NOT NULL,
	[NoteID] [int] NULL,
 CONSTRAINT [PK_ManufacturerContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerContact_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_ManufacturerContact_Manufacturer]
GO
