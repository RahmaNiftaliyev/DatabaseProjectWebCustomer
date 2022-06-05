CREATE TABLE [db_securityadmin].[sysdiagrams] (
    [name]         [sysname]       NOT NULL,
    [principal_id] INT             NULL,
    [diagram_id]   INT             NULL,
    [version]      INT             NULL,
    [definition]   VARBINARY (MAX) NULL
);


GO

