
CREATE TABLE [dbo].[itemHistorico](
	[idItemHistorico] [int] NOT NULL,
	[dataAtualizacao] [date] NULL,
	[idItem] [int] NULL,
	[idCategory] [int] NULL,
	[itemAtivo] [bit] NULL,
	[nomeItem] [varchar](50) NULL,
	[descricaoItem] [varchar](50) NULL,
	[valorItem] [decimal](30, 2) NULL,
 CONSTRAINT [PK_itemHistorico] PRIMARY KEY CLUSTERED 
(
	[idItemHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

