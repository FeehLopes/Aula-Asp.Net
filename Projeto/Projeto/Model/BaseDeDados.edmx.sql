
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/13/2017 22:36:23
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

IF OBJECT_ID(N'[dbo].[FK_AlunoTurma]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Turma] DROP CONSTRAINT [FK_AlunoTurma];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Aluno]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Aluno];
GO
IF OBJECT_ID(N'[dbo].[Turma]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Turma];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Aluno'
CREATE TABLE [dbo].[Aluno] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [RG] nvarchar(max)  NOT NULL,
    [CPF] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Turma'
CREATE TABLE [dbo].[Turma] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Curso] nvarchar(max)  NOT NULL,
    [Turno] nvarchar(max)  NOT NULL,
    [Sala] nvarchar(max)  NOT NULL,
    [Quantidade] nvarchar(max)  NOT NULL,
    [AlunoId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Aluno'
ALTER TABLE [dbo].[Aluno]
ADD CONSTRAINT [PK_Aluno]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Turma'
ALTER TABLE [dbo].[Turma]
ADD CONSTRAINT [PK_Turma]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AlunoId] in table 'Turma'
ALTER TABLE [dbo].[Turma]
ADD CONSTRAINT [FK_AlunoTurma]
    FOREIGN KEY ([AlunoId])
    REFERENCES [dbo].[Aluno]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlunoTurma'
CREATE INDEX [IX_FK_AlunoTurma]
ON [dbo].[Turma]
    ([AlunoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------