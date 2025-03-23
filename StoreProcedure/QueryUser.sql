USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[QueryUser]    Script Date: 2025/3/23 ¤U¤È 04:22:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QueryUser]
    @Email NVARCHAR(50),
    @Name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM 
        [user]
    WHERE 
		deleted_time is null
        AND (Email = @Email OR @Email IS NULL OR @Email = '')
        AND (Name = @Name OR @Name IS NULL OR @name = '');
END;
GO


