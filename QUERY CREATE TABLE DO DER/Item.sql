CREATE TABLE [dbo].[Item](
	[idItem] [int] IDENTITY(1,1) NOT NULL,
	[idCategory] [int] NOT NULL,
	[idCustomerVendedor] [int] NOT NULL,
	[itemAtivo] [bit] NOT NULL,
	[nomeItem] [varchar](50) NOT NULL,
	[descriçãoItem] [varchar](50) NOT NULL,
	[valorItem] [decimal](30, 2) NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category] FOREIGN KEY([idCategory])
REFERENCES [dbo].[Category] ([idCategory])
GO

ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category]
GO

ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Customer] FOREIGN KEY([idCustomerVendedor])
REFERENCES [dbo].[Customer] ([idCustomer])
GO

ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Customer]
GO

