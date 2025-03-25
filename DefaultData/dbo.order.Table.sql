USE [HomeWork]
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (1, N'小明明明', N'0911222333', CAST(N'2025-03-22T23:14:32.1133333' AS DateTime2), 7, CAST(N'2025-03-23T13:08:26.4900000' AS DateTime2), CAST(N'2025-03-23T13:09:57.8800000' AS DateTime2), CAST(90 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (2, N'大孔', N'0988666888', CAST(N'2025-03-23T13:09:28.8600000' AS DateTime2), 7, NULL, NULL, CAST(438 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (3, N'大K', N'0955666777', CAST(N'2025-03-23T14:06:02.3533333' AS DateTime2), 7, CAST(N'2025-03-23T14:06:49.9300000' AS DateTime2), CAST(N'2025-03-23T14:07:05.2833333' AS DateTime2), CAST(180 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (4, N'大恐', N'0955666777', CAST(N'2025-03-23T14:07:44.4533333' AS DateTime2), 7, NULL, NULL, CAST(380 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (5, N'KK', N'0922111333', CAST(N'2025-03-23T14:26:01.5500000' AS DateTime2), 1, NULL, NULL, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (6, N'GG', N'02-22334455', CAST(N'2025-03-23T14:26:30.6600000' AS DateTime2), 1, NULL, NULL, CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (7, N'大王', N'0955222000', CAST(N'2025-03-23T23:48:15.1866667' AS DateTime2), 1, CAST(N'2025-03-23T23:48:46.2533333' AS DateTime2), NULL, CAST(285 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (8, N'大填填', N'0988000111', CAST(N'2025-03-24T15:10:44.8333333' AS DateTime2), 1, NULL, NULL, CAST(509 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (9, N'大大', N'0933111678', CAST(N'2025-03-25T10:00:39.8866667' AS DateTime2), 1, CAST(N'2025-03-25T10:00:58.6833333' AS DateTime2), NULL, CAST(238 AS Decimal(18, 0)))
INSERT [dbo].[order] ([id], [name], [phone], [created_time], [created_user_id], [updated_time], [deleted_time], [total_price]) VALUES (10, N'GeneKung', N'0921123321', CAST(N'2025-03-25T10:13:51.9966667' AS DateTime2), 1, CAST(N'2025-03-25T10:27:39.8300000' AS DateTime2), NULL, CAST(358 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[order] OFF
GO
