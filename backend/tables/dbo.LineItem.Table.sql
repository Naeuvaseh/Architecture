USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[LineItem]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Rate] [money] NULL,
	[Duration] [decimal](8, 2) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
 CONSTRAINT [PK_LineItem_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ProjectID] ASC,
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LineItem] ADD  CONSTRAINT [DF_LineItem_Date]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[LineItem]  WITH CHECK ADD  CONSTRAINT [FK_LineItem_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[LineItem] CHECK CONSTRAINT [FK_LineItem_Employee]
GO
ALTER TABLE [dbo].[LineItem]  WITH CHECK ADD  CONSTRAINT [FK_LineItem_EmployeeActivity] FOREIGN KEY([EmployeeID], [ActivityID])
REFERENCES [dbo].[EmployeeActivity] ([EmployeeID], [ActivityID])
GO
ALTER TABLE [dbo].[LineItem] CHECK CONSTRAINT [FK_LineItem_EmployeeActivity]
GO
ALTER TABLE [dbo].[LineItem]  WITH CHECK ADD  CONSTRAINT [FK_LineItem_Invoice] FOREIGN KEY([InvoiceID], [ProjectID])
REFERENCES [dbo].[Invoice] ([ID], [ProjectID])
GO
ALTER TABLE [dbo].[LineItem] CHECK CONSTRAINT [FK_LineItem_Invoice]
GO
