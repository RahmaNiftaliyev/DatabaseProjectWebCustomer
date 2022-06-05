CREATE TABLE [dbo].[OrderDetails] (
    [Id]        INT IDENTITY (1, 1) NOT NULL,
    [ServiceId] INT NOT NULL,
    [OrderId]   INT NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([Id]),
    CONSTRAINT [FK_OrderDetails_Services] FOREIGN KEY ([ServiceId]) REFERENCES [dbo].[Services] ([Id])
);


GO

