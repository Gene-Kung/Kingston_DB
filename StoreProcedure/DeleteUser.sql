USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 2025/3/23 ¤U¤È 04:19:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUser]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[user]
	   SET deleted_time = GETDATE()
	 WHERE id = @id
END;
GO


