select * from Supply_chain;

select count(*) as Total_Rows from supply_chain ;

select product_id ,count(product_id) as count
from supply_chain
group by product_id
having count(product_id)>1;

SELECT
COUNT(*) AS TotalRows,
COUNT(Product_ID) AS Product_ID,
COUNT(Product_Name) AS Product_Name,
COUNT(Category) AS Category,
COUNT(Supplier_Name) AS Supplier_Name,
COUNT(Order_Date) AS Order_Date,
COUNT(Delivery_Date) AS Delivery_Date,
COUNT(Stock_Quantity) AS Stock_Quantity,
COUNT(Reorder_Level) AS Reorder_Level,
COUNT(Units_Sold) AS Units_Sold,
COUNT(Purchase_Cost) AS Purchase_Cost,
COUNT(Selling_Price) AS Selling_Price,
COUNT(Warehouse_Location) AS Warehouse_Location,
COUNT(Shipping_Time_Days) AS Shipping_Time_Days
FROM Supply_Chain;


SELECT *
FROM Supply_Chain
WHERE Stock_Quantity < 0
   OR Reorder_Level < 0
   OR Units_Sold < 0
   OR Purchase_Cost < 0
   OR Selling_Price < 0;


sp_help Supply_chain;