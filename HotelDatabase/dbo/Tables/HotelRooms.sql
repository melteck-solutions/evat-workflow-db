CREATE TABLE [dbo].[HotelRooms] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [RoomTypeID]   UNIQUEIDENTIFIER DEFAULT ('5CB03931-7B98-419C-8DC0-972E67486464') NOT NULL,
    [Name]         NVARCHAR (MAX)   NOT NULL,
    [Occupancy]    INT              NOT NULL,
    [CurrencyID]   UNIQUEIDENTIFIER DEFAULT ('EBCA12B5-A606-440D-A111-F8C068E581DD') NOT NULL,
    [RegularRate]  FLOAT (53)       NOT NULL,
    [Details]      NVARCHAR (MAX)   NULL,
    [SqFt]         NVARCHAR (MAX)   NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [CreatedDate]  DATETIME2 (7)    CONSTRAINT [DF_HotelRooms_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedDate]  DATETIME2 (7)    CONSTRAINT [DF_HotelRooms_UpdatedDate] DEFAULT (getdate()) NOT NULL,
    [BookedDate]   DATETIME2 (7)    CONSTRAINT [DF__HotelRoom__Booke__693CA210] DEFAULT (getdate()) NOT NULL,
    [NoDaysBooked] INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_HotelRooms] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HotelRooms_ToCodes] FOREIGN KEY ([RoomTypeID]) REFERENCES [dbo].[Codes] ([Id]),
    CONSTRAINT [FK_HotelRooms_ToCodes2] FOREIGN KEY ([CurrencyID]) REFERENCES [dbo].[Codes] ([Id])
);

