CREATE TABLE [dbo].[Candidates] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [VacantionId]  INT           NOT NULL,
    [EmailId]      INT           NOT NULL,
    [MobileNumber] NVARCHAR (13) NOT NULL,
    [Name]         VARCHAR (20)  NOT NULL,
    [Surname]      VARCHAR (30)  NOT NULL,
    CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Candidates_Vacancies] FOREIGN KEY ([VacantionId]) REFERENCES [dbo].[Vacancies] ([Id]),
    CONSTRAINT [UK_Candidates_EmailId] UNIQUE NONCLUSTERED ([EmailId] ASC),
    CONSTRAINT [Uk_Candidates_MobileNumber] UNIQUE NONCLUSTERED ([MobileNumber] ASC)
);


GO

