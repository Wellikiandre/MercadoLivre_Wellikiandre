CREATE TABLE [dbo].[Customer](
	[idCustomer] [int] IDENTITY(1,1) NOT NULL,
	[ehVendedor] [bit] NOT NULL,
	[ehComprador] [bit] NOT NULL,
	[email] [varchar](200) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[sobrenome] [varchar](200) NOT NULL,
	[sexo] [char](1) NOT NULL,
	[dtNascimento] [date] NOT NULL,
	[cep] [int] NOT NULL,
	[nomeLogradouro] [varchar](50) NOT NULL,
	[numFachada] [varchar](50) NOT NULL,
	[complemento] [varchar](50) NULL,
	[telefone] [decimal](13, 0) NOT NULL,
	[celular] [decimal](13, 0) NOT NULL,
	[cpf_cnpj] [decimal](14, 0) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[estado] [char](2) NOT NULL,
	[municipio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[idCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

