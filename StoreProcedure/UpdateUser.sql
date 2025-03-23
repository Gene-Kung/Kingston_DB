USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2025/3/23 ¤U¤È 04:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUser]
	@id int,
    @email NVARCHAR(255),
    @name NVARCHAR(255),
	@password NVARCHAR(Max),
	@token NVARCHAR(Max)
AS
BEGIN
    SET NOCOUNT ON;

	UPDATE [dbo].[user]
	   SET 
			email = @email,
			[name] = @name,
			[password] = @password,
			updated_time = GETDATE(),
			token = @token
	 WHERE id = @id
END;
GO


