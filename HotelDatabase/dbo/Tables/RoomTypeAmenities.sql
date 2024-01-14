CREATE TABLE [dbo].[RoomTypeAmenities] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [RoomTypeID]   UNIQUEIDENTIFIER NOT NULL,
    [AmenitiesID]  UNIQUEIDENTIFIER NOT NULL,
    [Status]       VARCHAR (1)      DEFAULT ('A') NOT NULL,
    [DateCreated]  DATETIME         DEFAULT (getdate()) NOT NULL,
    [DateModified] DATETIME         DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_RoomTypeAmenities] PRIMARY KEY NONCLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Codes_HotelRoomAmenities] FOREIGN KEY ([RoomTypeID]) REFERENCES [dbo].[Codes] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_HotelAmenities_HotelRoomAmenities] FOREIGN KEY ([AmenitiesID]) REFERENCES [dbo].[HotelAmenities] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);

