USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 2025/3/23 ¤U¤È 04:22:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[UpdateProduct]
	@id int,
    @price decimal(18,0),
    @name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[product]
	   SET 
			[name] = @name,
			[price] = @price,
			updated_time = GETDATE()
	 WHERE id = @id
END;
GO


