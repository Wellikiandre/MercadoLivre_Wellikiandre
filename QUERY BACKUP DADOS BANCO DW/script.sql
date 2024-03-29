USE [DW]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (1, N'TECNOLOGIA', N'SMARTPHONE')
INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (2, N'TECNOLOGIA', N'TABLET')
INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (3, N'TECNOLOGIA', N'NOTEBOOK')
INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (4, N'TECNOLOGIA', N'DESKTOP')
INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (5, N'FERRAMENTAS', N'Soprador Termico 1500w 110v Gamma G1935/br1')
INSERT [dbo].[Category] ([idCategory], [nomeCategory], [descricaoCategory]) VALUES (7, N'FERRAMENTAS', N'Soprador Termico 1500w 110v Gamma G1939/br4')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([idCustomer], [ehVendedor], [ehComprador], [email], [nome], [sobrenome], [sexo], [dtNascimento], [cep], [nomeLogradouro], [numFachada], [complemento], [telefone], [celular], [cpf_cnpj], [pais], [estado], [municipio]) VALUES (1, 1, 1, N'1@gmail.com', N'um', N'dos santos', N'M', CAST(N'2000-04-09' AS Date), 36789000, N'rua a', N'120', NULL, CAST(3232457890 AS Decimal(13, 0)), CAST(3298776450 AS Decimal(13, 0)), CAST(109873228901 AS Decimal(14, 0)), N'Brasil', N'MG', N'Belo Horizonte')
INSERT [dbo].[Customer] ([idCustomer], [ehVendedor], [ehComprador], [email], [nome], [sobrenome], [sexo], [dtNascimento], [cep], [nomeLogradouro], [numFachada], [complemento], [telefone], [celular], [cpf_cnpj], [pais], [estado], [municipio]) VALUES (2, 1, 0, N'2@gmail.com', N'dois', N'dos santos', N'F', CAST(N'1999-04-10' AS Date), 36789000, N'rua a', N'120', NULL, CAST(2121453212 AS Decimal(13, 0)), CAST(2132132141 AS Decimal(13, 0)), CAST(2138271491232 AS Decimal(14, 0)), N'Brasil', N'MG', N'Belo Horizonte')
INSERT [dbo].[Customer] ([idCustomer], [ehVendedor], [ehComprador], [email], [nome], [sobrenome], [sexo], [dtNascimento], [cep], [nomeLogradouro], [numFachada], [complemento], [telefone], [celular], [cpf_cnpj], [pais], [estado], [municipio]) VALUES (3, 0, 1, N'3@gmail.com', N'tres', N'dos santos', N'F', CAST(N'1997-09-18' AS Date), 24312422, N'rua jose', N'123', N'fundos cs 2', CAST(3421234442 AS Decimal(13, 0)), CAST(2415153223 AS Decimal(13, 0)), CAST(41231230002 AS Decimal(14, 0)), N'Brasil', N'RJ', N'Rio de Janeiro')
INSERT [dbo].[Customer] ([idCustomer], [ehVendedor], [ehComprador], [email], [nome], [sobrenome], [sexo], [dtNascimento], [cep], [nomeLogradouro], [numFachada], [complemento], [telefone], [celular], [cpf_cnpj], [pais], [estado], [municipio]) VALUES (4, 0, 1, N'4@gmail.com', N'quatro', N'dos santos', N'M', CAST(N'1991-07-29' AS Date), 24312422, N'rua jose', N'123', N'fundos cs 2', CAST(3421234442 AS Decimal(13, 0)), CAST(2415153223 AS Decimal(13, 0)), CAST(12412231122 AS Decimal(14, 0)), N'Brasil', N'RJ', N'Rio de Janeiro')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([idItem], [idCategory], [idCustomerVendedor], [itemAtivo], [nomeItem], [descriçãoItem], [valorItem]) VALUES (5, 1, 1, 1, N'celular galaxy s20', N'128 gb', CAST(1100.99 AS Decimal(30, 2)))
INSERT [dbo].[Item] ([idItem], [idCategory], [idCustomerVendedor], [itemAtivo], [nomeItem], [descriçãoItem], [valorItem]) VALUES (8, 1, 1, 1, N'celular galaxy s30', N'128 gb', CAST(1250.99 AS Decimal(30, 2)))
INSERT [dbo].[Item] ([idItem], [idCategory], [idCustomerVendedor], [itemAtivo], [nomeItem], [descriçãoItem], [valorItem]) VALUES (10, 1, 2, 1, N'celular galaxy s20', N'128 gb', CAST(1099.00 AS Decimal(30, 2)))
INSERT [dbo].[Item] ([idItem], [idCategory], [idCustomerVendedor], [itemAtivo], [nomeItem], [descriçãoItem], [valorItem]) VALUES (12, 1, 2, 1, N'celular galaxy s30', N'128 gb', CAST(1255.99 AS Decimal(30, 2)))
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (1, 5, 1, 3, 6, CAST(N'2020-04-06T07:12:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-04-09T10:23:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (2, 5, 1, 4, 5, CAST(N'2020-04-06T09:12:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-04-09T12:23:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (5, 5, 1, 3, 3, CAST(N'2020-03-30T00:00:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), NULL)
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (8, 10, 2, 3, 1, CAST(N'2020-04-04T00:00:00.000' AS DateTime), CAST(1099.00 AS Decimal(30, 2)), CAST(N'2020-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (9, 5, 1, 3, 6, CAST(N'2020-04-07T07:12:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-04-09T10:23:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (10, 5, 1, 4, 5, CAST(N'2020-03-06T09:12:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-04-09T12:23:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (11, 5, 1, 3, 3, CAST(N'2020-05-30T00:00:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (12, 10, 2, 3, 1, CAST(N'2020-05-04T00:00:00.000' AS DateTime), CAST(1099.00 AS Decimal(30, 2)), CAST(N'2020-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Order] ([idOrder], [idItem], [idCustomerVendedor], [IdCustomerComprador], [qteItem], [dataVenda], [valorItem], [dataFinalizada]) VALUES (13, 5, 1, 3, 3, CAST(N'2020-01-30T00:00:00.000' AS DateTime), CAST(1100.99 AS Decimal(30, 2)), CAST(N'2020-02-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[itemHistorico] ON 

INSERT [dbo].[itemHistorico] ([idItemHistorico], [dataAtualizacao], [idItem], [idCategory], [itemAtivo], [nomeItem], [descricaoItem], [valorItem]) VALUES (1, CAST(N'2022-04-09' AS Date), 5, 1, 1, N'celular galaxy s20', N'128 gb', CAST(1100.99 AS Decimal(30, 2)))
INSERT [dbo].[itemHistorico] ([idItemHistorico], [dataAtualizacao], [idItem], [idCategory], [itemAtivo], [nomeItem], [descricaoItem], [valorItem]) VALUES (2, CAST(N'2022-04-09' AS Date), 8, 1, 1, N'celular galaxy s30', N'128 gb', CAST(1250.99 AS Decimal(30, 2)))
INSERT [dbo].[itemHistorico] ([idItemHistorico], [dataAtualizacao], [idItem], [idCategory], [itemAtivo], [nomeItem], [descricaoItem], [valorItem]) VALUES (3, CAST(N'2022-04-09' AS Date), 10, 1, 1, N'celular galaxy s20', N'128 gb', CAST(1099.00 AS Decimal(30, 2)))
INSERT [dbo].[itemHistorico] ([idItemHistorico], [dataAtualizacao], [idItem], [idCategory], [itemAtivo], [nomeItem], [descricaoItem], [valorItem]) VALUES (4, CAST(N'2022-04-09' AS Date), 12, 1, 1, N'celular galaxy s30', N'128 gb', CAST(1255.99 AS Decimal(30, 2)))
SET IDENTITY_INSERT [dbo].[itemHistorico] OFF
GO
