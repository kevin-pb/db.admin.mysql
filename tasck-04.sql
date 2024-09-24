CREATE DEFINER=`root`@`%` PROCEDURE `see_prudct_expensive`()
select * 
from product
where unit_price >= 200