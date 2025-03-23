USE [HomeWork]
GO

/****** Object:  Table [dbo].[product]    Script Date: 2025/3/23 ¤U¤È 04:14:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[created_time] [datetime2](7) NOT NULL,
	[updated_time] [datetime2](7) NULL,
	[deleted_time] [datetime2](7) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_created_time]  DEFAULT (getdate()) FOR [created_time]
GO


