USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[EmployeeActivity]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeActivity](
	[EmployeeID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[Rate] [money] NOT NULL,
 CONSTRAINT [PK_EmployeeActivity] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeeActivity]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeActivity_Activity] FOREIGN KEY([ActivityID])
REFERENCES [dbo].[Activity] ([ID])
GO
ALTER TABLE [dbo].[EmployeeActivity] CHECK CONSTRAINT [FK_EmployeeActivity_Activity]
GO
ALTER TABLE [dbo].[EmployeeActivity]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeActivity_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[EmployeeActivity] CHECK CONSTRAINT [FK_EmployeeActivity_Employee]
GO
