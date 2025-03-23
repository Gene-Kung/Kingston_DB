USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[UpdateOrder]    Script Date: 2025/3/23 ¤U¤È 04:22:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrder]
    @id int,
	@name NVARCHAR(50),
	@phone NVARCHAR(50),
	@total_price decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[order]
	   SET [name] = @name
		  ,[phone] = @phone
		  ,[updated_time] = getdate()
		  ,[total_price] = @total_price
	 WHERE id = @id
END;
GO


