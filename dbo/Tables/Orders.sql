CREATE TABLE [dbo].[Orders] (
    [Id]           INT  IDENTITY (1, 1) NOT NULL,
    [CustomerId]   INT  NOT NULL,
    [WorkerId]     INT  NOT NULL,
    [OrderDate]    DATE NOT NULL,
    [RequiredDate] DATE NOT NULL,
    [ShippedDate]  DATE NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]),
    CONSTRAINT [FK_Orders_Workers] FOREIGN KEY ([WorkerId]) REFERENCES [dbo].[Workers] ([Id])
);


GO

