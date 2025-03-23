USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[QueryOrder]    Script Date: 2025/3/23 ¤U¤È 04:21:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QueryOrder]
    @name NVARCHAR(50),
	@phone NVARCHAR(50),
	@user_name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		[order].*
		,[user].name AS user_name
    FROM 
        [order]
	JOIN [user] ON 
		[order].created_user_id = [user].id
    WHERE 
		[order].deleted_time is null
        AND ([order].phone = @phone OR @phone IS NULL)
        AND ([order].[name] = @name OR @name IS NULL)
		AND ([user].name = @user_name OR @user_name IS NULL);
END;
GO


