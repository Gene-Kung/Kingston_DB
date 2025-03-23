USE [HomeWork]
GO

/****** Object:  StoredProcedure [dbo].[QueryOrderDetail]    Script Date: 2025/3/23 ¤U¤È 04:21:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[QueryOrderDetail]
	@order_id int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		[order_detail].*
		,[product].name
    FROM 
        [order_detail]
	JOIN [product] ON 
		[order_detail].product_id = [product].id
    WHERE 
        [order_detail].order_id = @order_id;
END;
GO


