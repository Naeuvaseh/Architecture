USE [lechire-architecture]
GO
/****** Object:  Table [dbo].[InventoryUsed]    Script Date: 4/26/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryUsed](
	[ProjectID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[InventoryID] [int] NOT NULL,
	[Critical] [bit] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_CriticalMaterials] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[EmployeeID] ASC,
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryUsed] ADD  CONSTRAINT [DF_InventoryUsed_Critical]  DEFAULT ((0)) FOR [Critical]
GO
ALTER TABLE [dbo].[InventoryUsed] ADD  CONSTRAINT [DF_Inventory_Used]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[InventoryUsed]  WITH CHECK ADD  CONSTRAINT [FK_CriticalMaterial_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[InventoryUsed] CHECK CONSTRAINT [FK_CriticalMaterial_Employee]
GO
ALTER TABLE [dbo].[InventoryUsed]  WITH CHECK ADD  CONSTRAINT [FK_CriticalMaterial_Inventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([ID])
GO
ALTER TABLE [dbo].[InventoryUsed] CHECK CONSTRAINT [FK_CriticalMaterial_Inventory]
GO
ALTER TABLE [dbo].[InventoryUsed]  WITH CHECK ADD  CONSTRAINT [FK_CriticalMaterial_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ID])
GO
ALTER TABLE [dbo].[InventoryUsed] CHECK CONSTRAINT [FK_CriticalMaterial_Project]
GO
