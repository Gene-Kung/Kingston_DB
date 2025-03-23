USE [HomeWork]
GO

/****** Object:  UserDefinedTableType [dbo].[OrderDetailType]    Script Date: 2025/3/23 ¤U¤È 04:23:46 ******/
CREATE TYPE [dbo].[OrderDetailType] AS TABLE(
	[sugar] [nvarchar](50) NOT NULL,
	[ice] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL
)
GO


