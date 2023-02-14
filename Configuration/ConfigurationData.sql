/*Create ADF User in ASQL */
CREATE USER [adf-metadata-driven-001] FROM EXTERNAL PROVIDER;
ALTER ROLE [db_owner] ADD MEMBER [adf-metadata-driven-001];

/* Create table for source to raw load definitions */
DROP TABLE IF EXISTS [ctrl].[SourceToBronze];
CREATE TABLE [ctrl].[SourceToBronze](
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [DataSourceName] [varchar](max) NOT NULL,
    [LinkedServiceName] [nvarchar](max) NULL,
	[SourceSchemaName] [nvarchar](max) NULL,
	[SourceTableName] [nvarchar](max) NULL,
	[SinkFileDirectoryName] [nvarchar](max) NULL,
	[SourceQueryDefinition] [nvarchar](max) NULL, 
	[LoadBatchGroup] [nvarchar](max) NULL,
	[IsActive] INT NULL
);

/* Insert Load Definitions */
TRUNCATE TABLE [ctrl].[SourceToBronze];
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-001', 'LS_ASQL_DynamicSource', 'SalesLT', 'SalesOrderHeader','Bronze', 'SELECT * FROM SalesLT.SalesOrderHeader', 1, 1);
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-002', 'LS_ASQL_DynamicSource', 'SalesLT', 'SalesOrderHeader','Bronze', 'SELECT * FROM SalesLT.SalesOrderHeader', 1, 1);
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-003', 'LS_ASQL_DynamicSource', 'SalesLT', 'SalesOrderHeader','Bronze', 'SELECT * FROM SalesLT.SalesOrderHeader', 1, 1);
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-001', 'LS_ASQL_DynamicSource', 'SalesLT', 'Product','Bronze', 'SELECT * FROM SalesLT.Product', 2, 1);
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-002', 'LS_ASQL_DynamicSource', 'SalesLT', 'Product','Bronze', 'SELECT * FROM SalesLT.Product', 2, 1);
INSERT INTO [ctrl].[SourceToBronze] ( [DataSourceName], [LinkedServiceName], [SourceSchemaName], [SourceTableName], [SinkFileDirectoryName], [SourceQueryDefinition], [LoadBatchGroup], [IsActive]) VALUES ( 'adventure-works-003', 'LS_ASQL_DynamicSource', 'SalesLT', 'Product','Bronze', 'SELECT * FROM SalesLT.Product', 2, 1);
