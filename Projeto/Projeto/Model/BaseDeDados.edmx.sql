
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/20/2017 21:44:44
-- Generated from EDMX file: E:\AspNet\Projeto\Projeto\Model\BaseDeDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ColegioDB];
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

-- Creating table 'Turma'
CREATE TABLE [dbo].[Turma] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sala] nvarchar(max)  NOT NULL,
    [Turno] nvarchar(max)  NOT NULL,
    [Curso] nvarchar(max)  NOT NULL,
    [Quantidade] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Aluno'
CREATE TABLE [dbo].[Aluno] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [RG] nvarchar(max)  NOT NULL,
    [CPF] nvarchar(max)  NOT NULL,
    [TurmaId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Turma'
ALTER TABLE [dbo].[Turma]
ADD CONSTRAINT [PK_Turma]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Aluno'
ALTER TABLE [dbo].[Aluno]
ADD CONSTRAINT [PK_Aluno]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TurmaId] in table 'Aluno'
ALTER TABLE [dbo].[Aluno]
ADD CONSTRAINT [FK_TurmaAluno]
    FOREIGN KEY ([TurmaId])
    REFERENCES [dbo].[Turma]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TurmaAluno'
CREATE INDEX [IX_FK_TurmaAluno]
ON [dbo].[Aluno]
    ([TurmaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------