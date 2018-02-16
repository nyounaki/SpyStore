﻿IF OBJECT_ID(N'__EFMigrationsHistory') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF SCHEMA_ID(N'Store') IS NULL EXEC(N'CREATE SCHEMA [Store];');

GO

CREATE TABLE [Store].[Categories] (
    [Id] int NOT NULL IDENTITY,
    [CategoryName] nvarchar(50) NULL,
    [TimeStamp] varbinary(max) NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY ([Id])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20180211080111_Initial', N'2.0.1-rtm-125');

GO

