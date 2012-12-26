
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/27/2012 04:34:10
-- Generated from EDMX file: C:\Users\Public\Documents\My Projects\Github\dncmag-04-zero-loss-info-system\ZeroLossInformationSystem\ZeroLossInformationSystem.Data\Entities\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [llisdb];
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

-- Creating table 'UserAccounts'
CREATE TABLE [dbo].[UserAccounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreatedById] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'UserAccountOperations'
CREATE TABLE [dbo].[UserAccountOperations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserAccountId] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Action] nvarchar(max)  NOT NULL,
    [UpdatedById] int  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [ParentUserAccount_Id] int  NOT NULL
);
GO

-- Creating table 'UserDepartments'
CREATE TABLE [dbo].[UserDepartments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreatedById] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'UserDepartmentOperations'
CREATE TABLE [dbo].[UserDepartmentOperations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserDepartmentId] nvarchar(max)  NOT NULL,
    [UserAccountId] nvarchar(max)  NOT NULL,
    [DepartmentId] nvarchar(max)  NOT NULL,
    [DesignationId] nvarchar(max)  NOT NULL,
    [Action] nvarchar(max)  NOT NULL,
    [UpdatedById] int  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UserDepartments_Id] int  NOT NULL,
    [UserAccount_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserAccounts'
ALTER TABLE [dbo].[UserAccounts]
ADD CONSTRAINT [PK_UserAccounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserAccountOperations'
ALTER TABLE [dbo].[UserAccountOperations]
ADD CONSTRAINT [PK_UserAccountOperations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserDepartments'
ALTER TABLE [dbo].[UserDepartments]
ADD CONSTRAINT [PK_UserDepartments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserDepartmentOperations'
ALTER TABLE [dbo].[UserDepartmentOperations]
ADD CONSTRAINT [PK_UserDepartmentOperations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ParentUserAccount_Id] in table 'UserAccountOperations'
ALTER TABLE [dbo].[UserAccountOperations]
ADD CONSTRAINT [FK_UserAccountOperationsUserAccount]
    FOREIGN KEY ([ParentUserAccount_Id])
    REFERENCES [dbo].[UserAccounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAccountOperationsUserAccount'
CREATE INDEX [IX_FK_UserAccountOperationsUserAccount]
ON [dbo].[UserAccountOperations]
    ([ParentUserAccount_Id]);
GO

-- Creating foreign key on [UserDepartments_Id] in table 'UserDepartmentOperations'
ALTER TABLE [dbo].[UserDepartmentOperations]
ADD CONSTRAINT [FK_UserDepartmentOperationsUserDepartment]
    FOREIGN KEY ([UserDepartments_Id])
    REFERENCES [dbo].[UserDepartments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDepartmentOperationsUserDepartment'
CREATE INDEX [IX_FK_UserDepartmentOperationsUserDepartment]
ON [dbo].[UserDepartmentOperations]
    ([UserDepartments_Id]);
GO

-- Creating foreign key on [UserAccount_Id] in table 'UserDepartmentOperations'
ALTER TABLE [dbo].[UserDepartmentOperations]
ADD CONSTRAINT [FK_UserAccountUserDepartmentOperations]
    FOREIGN KEY ([UserAccount_Id])
    REFERENCES [dbo].[UserAccounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAccountUserDepartmentOperations'
CREATE INDEX [IX_FK_UserAccountUserDepartmentOperations]
ON [dbo].[UserDepartmentOperations]
    ([UserAccount_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------