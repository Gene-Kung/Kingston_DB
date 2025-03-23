USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 2025/3/23 ¤U¤È 04:20:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUser]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM 
        [user]
    WHERE 
		id = @id;
END;
GO


