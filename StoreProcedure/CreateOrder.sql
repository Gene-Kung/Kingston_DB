USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 2025/3/23 下午 04:16:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOrder]
    @name NVARCHAR(50),
    @phone NVARCHAR(50),
	@created_user_id int,
	@total_price decimal(18,0),
	@order_details dbo.OrderDetailType READONLY
AS
BEGIN
	SET NOCOUNT ON;

    BEGIN TRANSACTION;
		BEGIN TRY

			INSERT INTO [dbo].[order]
				   ([name]
				   ,[phone]
				   ,[created_user_id]
				   ,[total_price])
			 VALUES
				   (@name
				   ,@phone
				   ,@created_user_id
				   ,@total_price)

			-- 取得剛插入的 User Id
			DECLARE @NewUserId INT = SCOPE_IDENTITY();

			INSERT INTO order_detail (order_id, sugar, ice, product_id)
			SELECT @NewUserId, sugar, ice, product_id FROM @order_details;

			COMMIT TRANSACTION;  -- 如果沒有錯誤，則提交

			-- 直接回傳 User Id
			SELECT @NewUserId AS NewUserId;

		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;  -- 如果發生錯誤，則回滾
			-- 記錄錯誤
			--DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
			--PRINT 'Error: ' + @ErrorMessage;
		END CATCH
END;
GO


