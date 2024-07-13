select * from sales

	--- 10 QUERRY QUESTION  USING REGEX
	
que 1)--  data of  order id starting with CA of year 2015, 2016 and end of digit with 0 or 5

select order_id from sales where order_id ~* '^(c|a){2}-201(5|6)-[0-9]{5}(0|5)$'

que 2)-- order id of every year starting with text CA and end of last two digit is 66

select order_id from sales where order_id ~* '^[A-Z]{2}-201(4|5|6)-[0-9]{3}(6|7)66$'

que 3)--DATA OF PRODUCT ID STARTING WITH  TEC-PH-1000 

select product_id  from sales where product_id ~* '^(T|E|C){3}-PH-1000[0-9]{4}$'

que 4)-- DATA OF COUSTOMER ID WHCIH IS START WITH KM...

select customer_id from sales where customer_id ~* '^K(M|P)'

que 5)-- the  mid  text should be starting from S from product id

select product_id  from sales where product_id ~* '^[A-Z]{3}-S[A-Z]-[0-9]{8}$'

que 6)--data of sales which is starting from 2\3

select sales from sales where sales:: varchar ~*'^[2-3]{3}.[0-9]{2}$'

que 7)--- data  from order_date where data of year 14\15\16\17 from 1 date or 1 month also

select order_date from sales where order_date::varchar ~* '^201(4|5|6|7)-01-01$'

que 8)--- data of first class from ship_mode

select ship_mode from sales where ship_mode ~* 'F[a-z]{4} [a-z]{5}'

que 9)-- product id starting with OFF and ending with  digit 3

select product_id from sales where product_id ~* '^o[a-z]{2}-[a-z]{2}-[0-9]{7}3$'

que 10) --- the data of 9 th month from every year fro order_date

select order_date from sales where order_date::varchar ~* '^201(4|5|6)-09-[0-9]{2}$'











