USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 2025/3/23 �U�� 04:16:37 ******/
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

			-- ���o�贡�J�� User Id
			DECLARE @NewUserId INT = SCOPE_IDENTITY();

			INSERT INTO order_detail (order_id, sugar, ice, product_id)
			SELECT @NewUserId, sugar, ice, product_id FROM @order_details;

			COMMIT TRANSACTION;  -- �p�G�S�����~�A�h����

			-- �����^�� User Id
			SELECT @NewUserId AS NewUserId;

		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;  -- �p�G�o�Ϳ��~�A�h�^�u
			-- �O�����~
			--DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
			--PRINT 'Error: ' + @ErrorMessage;
		END CATCH
END;
GO


