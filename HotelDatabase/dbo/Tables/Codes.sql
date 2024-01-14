CREATE TABLE [dbo].[Codes] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Type]         VARCHAR (10)     NOT NULL,
    [Name]         VARCHAR (100)    NOT NULL,
    [Description]  VARCHAR (150)    NULL,
    [Code]         VARCHAR (10)     NOT NULL,
    [Status]       VARCHAR (1)      DEFAULT ('A') NOT NULL,
    [DateCreated]  DATETIME         DEFAULT (getdate()) NOT NULL,
    [DateModified] DATETIME         DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Codes] PRIMARY KEY NONCLUSTERED ([Id] ASC)
);

