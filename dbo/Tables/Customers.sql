CREATE TABLE [dbo].[Customers] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [EmailId]         INT           NOT NULL,
    [Name]            VARCHAR (20)  NOT NULL,
    [Surname]         VARCHAR (30)  NOT NULL,
    [TitleOfCourtesy] VARCHAR (20)  NOT NULL,
    [MobileNumber]    NVARCHAR (13) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Customers_Emails] FOREIGN KEY ([EmailId]) REFERENCES [dbo].[Emails] ([Id]),
    CONSTRAINT [UK_Customers_EmailId] UNIQUE NONCLUSTERED ([EmailId] ASC)
);


GO

CREATE NONCLUSTERED INDEX [UK_Customers_MobileNumber]
    ON [dbo].[Customers]([Id] ASC);


GO

