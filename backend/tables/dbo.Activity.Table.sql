USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Work] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
