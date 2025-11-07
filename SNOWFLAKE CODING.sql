---To check the data types in my data

SELECT*
FROM BRIGHT_COFFEE_SHOP
LIMIT 10;

---------explore data analysis

---Checking number of coffee shop
SELECT DISTINCT store_location
FROM BRIGHT_COFFEE_SHOP; 

--- I want to check my categorical column

SELECT DISTINCT PRODUCT_CATEGORY
FROM BRIGHT_COFFEE_SHOP;

---Checking the date business starts operating

SELECT MIN(transaction_date) AS first_operating_date
FROM BRIGHT_COFFEE_SHOP;

---Checking the date business stops operating

SELECT MAX(transaction_date) AS last_operating_date
FROM BRIGHT_COFFEE_SHOP;

----Checking what time does the shop opens

SELECT MIN(transaction_time) AS opening_hour
FROM  BRIGHT_COFFEE_SHOP; 

---Checking what time does the shop close

SELECT MAX(transaction_time) AS closing_hour
FROM BRIGHT_COFFEE_SHOP;


SELECT transaction_date,
      DAYNAME(transaction_date) AS day_name,
      CASE
      WHEN day_name IN ('Sun','Sat') THEN 'weekend'
      ELSE'weekday'
      END AS day_classification,
      MONTHNAME (transaction_date) AS month_name,
      transaction_time,

CASE 
      WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN 'Morning'
      WHEN transaction_time BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon' 
      WHEN transaction_time >= '17:00:00' THEN 'Evening'
 END AS time_classification,
      
 HOUR(transaction_time) AS hour_of_day,
      
---checking numbers of product categorie
 Store_location,
 product_category,
 product_detail,
 product_type,
 unit_price,
 transaction_qty,
 (transaction_qty* unit_price) AS revenue 
 FROM BRIGHT_COFFEE_SHOP;







-------


