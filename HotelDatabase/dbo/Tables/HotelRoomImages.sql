CREATE TABLE [dbo].[HotelRoomImages] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [RoomId]       UNIQUEIDENTIFIER NOT NULL,
    [RoomImageUrl] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_HotelRoomImages] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HotelRoomImages_HotelRooms_RoomId] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[HotelRooms] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_HotelRoomImages_RoomId]
    ON [dbo].[HotelRoomImages]([RoomId] ASC);

