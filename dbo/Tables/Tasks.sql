CREATE TABLE [dbo].[Tasks] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Title]       VARCHAR (20)  NOT NULL,
    [Content]     VARCHAR (MAX) NOT NULL,
    [StarterDate] DATE          NOT NULL,
    [DeadLine]    DATE          NOT NULL,
    [WorkerId]    INT           NOT NULL,
    CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Tasks_Workers] FOREIGN KEY ([WorkerId]) REFERENCES [dbo].[Workers] ([Id])
);


GO

