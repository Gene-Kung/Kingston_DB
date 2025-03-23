USE [HomeWork]
GO

/****** Object:  Table [dbo].[order]    Script Date: 2025/3/20 ¤U¤È 11:05:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[created_time] [datetime2](7) NOT NULL,
	[created_user_id] [int] NOT NULL,
	[updated_time] [datetime2](7) NULL,
	[deleted_time] [datetime2](7) NULL,
	[total_price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_created_time]  DEFAULT (getdate()) FOR [created_time]
GO


