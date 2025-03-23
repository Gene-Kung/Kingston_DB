USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 2025/3/23 下午 04:17:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[CreateProduct]
    @price decimal(18,0),
    @name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

	INSERT INTO [dbo].[product]
			   ([name]
			   ,[price])
		 VALUES
			   (@name
			   ,@price)

    -- 直接回傳新 ID
    SELECT SCOPE_IDENTITY() AS NewId;
END;
GO


