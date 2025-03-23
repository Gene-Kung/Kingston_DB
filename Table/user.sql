USE [HomeWork]
GO

/****** Object:  Table [dbo].[user]    Script Date: 2025/3/23 下午 04:14:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[created_time] [datetime2](7) NOT NULL,
	[updated_time] [datetime2](7) NULL,
	[deleted_time] [datetime2](7) NULL,
	[token] [nvarchar](max) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_user_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user_created_time]  DEFAULT (getdate()) FOR [created_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員資料表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'id'
GO


