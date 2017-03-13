SET PAGESIZE 40
SET LINESIZE 60
SET FEEDBACK OFF
TTITLE 'Semester Project|Purchase History'
BTITLE 'Khaled Asad'
BREAK ON customer_id SKIP 1
COL customer_id HEADING 'Customer ID' FORMAT 99
COL order_online_id HEADING 'Online Order ID' FORMAT 99
COL dates HEADING 'Date Purchase ' FORMAT A15
-- Selects all customers that have made online order. It will show the customers id, 
--online order id as well the date the perchuse was made.
SELECT customer_id, online_order_id,dates FROM online_order_id
ORDER BY 1;