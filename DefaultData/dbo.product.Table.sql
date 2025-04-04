USE [HomeWork]
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (1, N'black tea', CAST(50 AS Decimal(18, 0)), CAST(N'2025-03-20T16:50:14.2900000' AS DateTime2), NULL, NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (2, N'Green tea', CAST(60 AS Decimal(18, 0)), CAST(N'2025-03-20T17:02:47.1900000' AS DateTime2), CAST(N'2025-03-20T17:05:01.7166667' AS DateTime2), NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (3, N'金萱', CAST(30 AS Decimal(18, 0)), CAST(N'2025-03-21T09:23:04.4366667' AS DateTime2), NULL, CAST(N'2025-03-24T15:02:30.6500000' AS DateTime2))
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (4, N'oolong tea', CAST(200 AS Decimal(18, 0)), CAST(N'2025-03-22T16:08:44.8600000' AS DateTime2), CAST(N'2025-03-22T16:09:18.9600000' AS DateTime2), NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (5, N'普洱茶', CAST(150 AS Decimal(18, 0)), CAST(N'2025-03-22T22:09:48.1900000' AS DateTime2), NULL, NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (6, N'奶茶', CAST(88 AS Decimal(18, 0)), CAST(N'2025-03-22T22:13:21.6633333' AS DateTime2), NULL, NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (7, N'珍珠奶茶', CAST(133 AS Decimal(18, 0)), CAST(N'2025-03-22T22:13:53.4100000' AS DateTime2), CAST(N'2025-03-24T15:08:39.0700000' AS DateTime2), CAST(N'2025-03-24T15:09:16.5100000' AS DateTime2))
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (8, N'四季春', CAST(25 AS Decimal(18, 0)), CAST(N'2025-03-23T23:46:39.3300000' AS DateTime2), NULL, NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (9, N'鐵觀音', CAST(70 AS Decimal(18, 0)), CAST(N'2025-03-24T15:02:04.7733333' AS DateTime2), NULL, NULL)
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (10, N'珍珠奶茶', CAST(111 AS Decimal(18, 0)), CAST(N'2025-03-24T15:09:53.8100000' AS DateTime2), NULL, CAST(N'2025-03-25T10:06:47.3533333' AS DateTime2))
INSERT [dbo].[product] ([id], [name], [price], [created_time], [updated_time], [deleted_time]) VALUES (11, N'波霸奶茶', CAST(1000 AS Decimal(18, 0)), CAST(N'2025-03-25T10:06:22.9266667' AS DateTime2), CAST(N'2025-03-25T10:06:36.4100000' AS DateTime2), CAST(N'2025-03-25T10:08:10.0733333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
