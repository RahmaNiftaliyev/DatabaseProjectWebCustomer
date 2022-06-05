CREATE TABLE [dbo].[Events] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [WorkerId]   INT          NOT NULL,
    [Title]      VARCHAR (25) NOT NULL,
    [Location]   VARCHAR (30) NOT NULL,
    [IsBusiness] BIT          NOT NULL,
    [EventDay]   DATE         NOT NULL,
    [CustomerId] INT          NULL,
    CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Events_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]),
    CONSTRAINT [FK_Events_Workers] FOREIGN KEY ([WorkerId]) REFERENCES [dbo].[Workers] ([Id])
);


GO
ALTER TABLE [dbo].[Events] NOCHECK CONSTRAINT [FK_Events_Customers];


GO
ALTER TABLE [dbo].[Events] NOCHECK CONSTRAINT [FK_Events_Workers];


GO

