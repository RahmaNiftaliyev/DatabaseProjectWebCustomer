CREATE TABLE [dbo].[Emails] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [EmailAddress] VARCHAR (30) NOT NULL,
    [PasswordCrm]  VARCHAR (50) NOT NULL,
    [IsWorker]     BIT          NOT NULL,
    CONSTRAINT [UK_Emails_EmailAddress] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Emails_Candidates] FOREIGN KEY ([Id]) REFERENCES [dbo].[Candidates] ([EmailId])
);


GO

