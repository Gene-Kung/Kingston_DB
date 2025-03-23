USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 2025/3/23 ¤U¤È 04:18:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrder]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[order]
	   SET deleted_time = GETDATE()
	 WHERE id = @id
END;
GO


