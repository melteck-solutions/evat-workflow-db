CREATE TABLE [dbo].[HotelAmenities] (
    [Id]           UNIQUEIDENTIFIER CONSTRAINT [DF_HotelAmenities_Id] DEFAULT (newid()) NOT NULL,
    [Name]         NVARCHAR (MAX)   NOT NULL,
    [Description]  NVARCHAR (MAX)   NULL,
    [Timing]       NVARCHAR (MAX)   NOT NULL,
    [DateCreated]  DATETIME2 (7)    CONSTRAINT [DF_HotelAmenities_DateCreated] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [DateModified] DATETIME2 (7)    CONSTRAINT [DF_HotelAmenities_DateModified] DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [IconStyle]    NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_HotelAmenities] PRIMARY KEY CLUSTERED ([Id] ASC)
);

