CREATE TABLE [dbo].[Notification] (
    [Id]          UNIQUEIDENTIFIER NULL,
    [Title]       VARCHAR (50)     NULL,
    [Message]     NVARCHAR (200)   NULL,
    [Recipient]   VARCHAR (50)     NULL,
    [ReadStatus]  BIT              NULL,
    [DateCreated] DATETIME         NULL,
    [DateRead]    DATETIME         NULL
);

