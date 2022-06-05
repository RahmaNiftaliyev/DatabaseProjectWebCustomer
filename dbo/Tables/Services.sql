CREATE TABLE [dbo].[Services] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Title]       VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

