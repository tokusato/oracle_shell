OPTIONS (DIRECT=TRUE)
LOAD DATA 
INFILE * 
APPEND INTO TABLE sales_load
FIELDS TERMINATED BY ',' 
(sales_date DATE "DD-MON-YY", order_id, product_id, product_name, product_category,quantity, sales_amount)
BEGINDATA 
04-FEB-15,3569,200,Samsung F7100,Mobile,10,1600.67
04-JAN-15,3567,100,Mobile Cover,Mobile,20,40.89
04-JAN-15,3567,101,iPhone,Mobile,30,60.55
01-JAN-15,3568,100,Mobile Cover,Mobile,20,300.33
07-FEB-15,3570,105,HTC 7800,Mobile,10,1400.67
07-FEB-15,3570,106,Microsoft Keyboard 7865,Computer,50,500.56
07-FEB-15,3570,101,iPhone,Mobile,30,300.50

