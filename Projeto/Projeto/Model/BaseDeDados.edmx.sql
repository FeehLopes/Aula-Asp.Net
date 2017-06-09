
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/08/2017 20:11:03
-- Generated from EDMX file: E:\AspNet\Projeto\Projeto\Model\BaseDeDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [model];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Alunos'
CREATE TABLE [dbo].[Alunos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [CPF] nvarchar(max)  NOT NULL,
    [RG] nvarchar(max)  NOT NULL,
    [Idade] nvarchar(max)  NOT NULL,
    [Ativo] bit  NOT NULL
);
GO

-- Creating table 'Turmas'
CREATE TABLE [dbo].[Turmas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sala] nvarchar(max)  NOT NULL,
    [Quantidade] nvarchar(max)  NOT NULL,
    [Turno] nvarchar(max)  NOT NULL,
    [Curso] nvarchar(max)  NOT NULL,
    [AlunoId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Alunos'
ALTER TABLE [dbo].[Alunos]
ADD CONSTRAINT [PK_Alunos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Turmas'
ALTER TABLE [dbo].[Turmas]
ADD CONSTRAINT [PK_Turmas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AlunoId] in table 'Turmas'
ALTER TABLE [dbo].[Turmas]
ADD CONSTRAINT [FK_AlunoTurma]
    FOREIGN KEY ([AlunoId])
    REFERENCES [dbo].[Alunos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlunoTurma'
CREATE INDEX [IX_FK_AlunoTurma]
ON [dbo].[Turmas]
    ([AlunoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------