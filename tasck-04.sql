Create view product_category
as
select p.product_id, 
       p.product_name, 
       p.quantity_per_unit, 
       p.unit_price, 
       c.category_id, 
       c.name
from product as p inner join category as c on p.category_id = c.category_id

SELECT * FROM Adm.product_category;


delimiter //
CREATE DEFINER=`root`@`%` PROCEDURE `introduce_values`()
begin
   Insert into customer()
   values(11, "Alberto Gomes", "InovationX", "Alverto@Gomes.com", "890 Central Plaza, Suite 567", "Los Angeles", "USA");
 end
  delimiter //;


delimiter //
CREATE DEFINER=`root`@`%` PROCEDURE `introduce_values`()
begin
	UPDATE `Adm`.`customer` set `contact_name` = 'Roberto Ernandes' WHERE (`customer_id` = '11');
 end
  delimiter //;


CREATE INDEX index1 ON adm.product (product_id);