USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[QueryProduct]    Script Date: 2025/3/23 ¤U¤È 04:21:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QueryProduct]
    @price decimal(18,0),
    @name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM 
        [product]
    WHERE 
		deleted_time is null
        AND (price = @price OR @price IS NULL)
        AND ([name] = @name OR @name IS NULL OR @name = '');
END;
GO


