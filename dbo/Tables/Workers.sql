CREATE TABLE [dbo].[Workers] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (15)  NOT NULL,
    [Surname]      VARCHAR (20)  NOT NULL,
    [EmailId]      INT           NOT NULL,
    [MobileNumber] NVARCHAR (13) NOT NULL,
    [Gender]       VARCHAR (6)   NOT NULL,
    CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Workers_Emails] FOREIGN KEY ([EmailId]) REFERENCES [dbo].[Emails] ([Id]),
    CONSTRAINT [UK_Workers_EmailId] UNIQUE NONCLUSTERED ([EmailId] ASC),
    CONSTRAINT [UK_Workers_MobileNumber] UNIQUE NONCLUSTERED ([MobileNumber] ASC)
);


GO

