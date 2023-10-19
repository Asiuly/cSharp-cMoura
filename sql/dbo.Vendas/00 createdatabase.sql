USE [master]
GO

CREATE DATABASE [Comercio]  
GO

USE [Comercio]
GO

CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[QtdeEstoqueAtual] [decimal](5, 2) NOT NULL,
	[QtdeEstoqueMinimo] [decimal](5, 2) NOT NULL,
	[VrUnitario] [decimal](7, 2) NOT NULL,
    CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED ([Id] ASC)) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[DtNascimento] [date] NOT NULL,
	[Email] [varchar](50) NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED ([Id] ASC)) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VendaStatus](
	[Id] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
    CONSTRAINT [PK_VendaStatus] PRIMARY KEY CLUSTERED ([Id] ASC)) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Venda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdStatus] [int] NOT NULL,
	[Dt] [date] NOT NULL,
    CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED ([Id] ASC)) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VendaProduto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVenda] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Qtde] [int] NOT NULL,
	[Vr] [decimal](5, 2) NOT NULL,
    CONSTRAINT [PK_VendaProduto] PRIMARY KEY CLUSTERED ([IdVenda] ASC, [IdProduto] ASC)) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Venda] WITH CHECK 
	ADD CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([IdCliente])
	REFERENCES [dbo].[Cliente] ([Id])

GO

ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO

ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_VendaStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[VendaStatus] ([Id])
GO

ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_VendaStatus]
GO

ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Produto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([Id])
GO

ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Produto]
GO

ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Venda] FOREIGN KEY([IdVenda])
REFERENCES [dbo].[Venda] ([Id])
GO

ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Venda]
GO