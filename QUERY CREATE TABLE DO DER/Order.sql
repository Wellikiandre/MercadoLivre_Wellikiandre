CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[idItem] [int] NOT NULL,
	[idCustomerVendedor] [int] NOT NULL,
	[IdCustomerComprador] [int] NOT NULL,
	[qteItem] [int] NOT NULL,
	[dataVenda] [datetime] NOT NULL,
	[valorItem] [decimal](30, 2) NOT NULL,
	[valorTotalVenda] [decimal](30, 2) NOT NULL,
	[dataFinalizada] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer2] FOREIGN KEY([idCustomerVendedor])
REFERENCES [dbo].[Customer] ([idCustomer])
GO

ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer2]
GO

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer3] FOREIGN KEY([IdCustomerComprador])
REFERENCES [dbo].[Customer] ([idCustomer])
GO

ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer3]
GO

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Item] FOREIGN KEY([idItem])
REFERENCES [dbo].[Item] ([idItem])
GO

ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Item]
GO

