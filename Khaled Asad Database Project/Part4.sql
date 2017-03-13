--Khaled Asad
--12/1/2016

--Query 1
--This query will show last name, first name, zipcode, and contact number
--who live in Texas state and  have perchesed a custom car build.
SELECT last_name AS "Last Name", first_name AS "First Name", 
zip AS "Zip", phone AS "Phone"
FROM Customer_id
WHERE state LIKE '%Texas%' AND customer_id IN 
                          (SELECT customer_id FROM online_order_id)
ORDER BY last_name;

--Query 2
--This query will show the total price of all custom car build by Top Car Build
--where it will range in 3 different categories "High", "Medium", and "Low".
SELECT TO_CHAR(price,'$9999,99') AS "Price",
  CASE
  WHEN price BETWEEN 0 AND 30000 THEN 'Low'
  WHEN price BETWEEN 30000 AND 5000 THEN 'Medium'
    ELSE 'High' 
      END AS "Price Range"
FROM custom_build_id
ORDER BY price;

--Query 3
--This query will show the least expensive car build.
SELECT TO_CHAR(MIN(price),'$9999,99') AS "Lowest Car Price Build"
FROM custom_build_id
ORDER BY price;

--Query 4
--This query will show last name of a customer
--who is driving manual transmission.
SELECT last_name AS "Last Name", transmission AS "Transmission Type"
FROM Customer_id cid JOIN Online_Order_id oo
ON (cid.customer_id = oo.customer_id)
JOIN Custom_Build_id cb
ON(oo.custom_build_id = cb.custom_build_id)
JOIN Engine_id e
ON(cb.engine_id = e.engine_id)
WHERE transmission LIKE 'Manual'
ORDER BY Last_name;

--Query 5
--This query shows the customers who have an online order that took place in 2016.
SELECT first_name, last_name
FROM customer_id 
WHERE customer_id IN (SELECT customer_id FROM online_order_id WHERE dates LIKE '%-%-16');

--Query 6
--This query will show a union of colors and materials
--used in car interior and exterior body. 
SELECT color AS "Color",  interior_type AS "Material",
'Interior' AS "Interior Design"
FROM Interior_id
  UNION
    SELECT color, hood,'Exterior Design'
    FROM Body_id
ORDER BY 1 DESC;

--Query 7
--This query will show the oldest and newest perchase made.
SELECT MIN(dates) AS "Oldest Purchase", MAX(dates) AS "Newest Purchase"
FROM Online_Order_id
ORDER BY dates;

--Query 8
--This query will show first name of the customer, date the custom car was 
--purchased, and the price of the custom.
SELECT cid.first_name,
  TO_CHAR(dates, 'YYYY MONTH DD') AS "Date",
  TO_CHAR(price, '$9999,99') "Price"
FROM Customer_id cid JOIN Online_Order_id oo
ON (cid.customer_id = oo.customer_id)
JOIN Custom_Build_id cb
ON(oo.custom_build_id = cb.custom_build_id)
ORDER BY 1;

--Query 9
--This query will show the customers that purchased the custom build 11.
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM Customer_id c
JOIN Online_Order_id  o ON (c.customer_id = o.customer_id)
WHERE (c.customer_id ,11) In (SELECT customer_id, custom_build_id 
FROM Online_Order_id)
ORDER BY 1;

--Query 10
--This query will show all the customers last name and the orderID 
--as well the dates they have purchased the custom car.
SELECT c.last_name AS "Last Name", oo.online_order_id "Order ID",
oo.dates "Date Purchased"
FROM Customer_id c
FULL OUTER JOIN Online_order_id oo 
ON(c.customer_id = oo.customer_id)
ORDER BY 2;


