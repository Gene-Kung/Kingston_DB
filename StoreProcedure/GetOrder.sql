USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[GetOrder]    Script Date: 2025/3/23 ¤U¤È 04:19:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOrder]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM 
        [order]
    WHERE 
		id = @id;
END;
GO


