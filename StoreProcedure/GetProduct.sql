USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[GetProduct]    Script Date: 2025/3/23 ¤U¤È 04:20:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATe PROCEDURE [dbo].[GetProduct]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM 
        [product]
    WHERE 
		id = @id;
END;
GO


