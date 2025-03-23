USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 2025/3/23 下午 04:17:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUser]
    @email NVARCHAR(50),
    @name NVARCHAR(50),
	@password NVARCHAR(Max)
AS
BEGIN
    SET NOCOUNT ON;

	INSERT INTO [dbo].[user]
			   ([name]
			   ,[email]
			   ,[password])
		 VALUES
			   (@name
			   ,@email
			   ,@password)

    -- 直接回傳新 ID
    SELECT SCOPE_IDENTITY() AS NewId;
END;
GO


