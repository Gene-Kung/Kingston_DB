USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 2025/3/23 ¤U¤È 04:18:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProduct]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[product]
	   SET deleted_time = GETDATE()
	 WHERE id = @id
END;
GO


