use adm;
Create view product_category
select p.product_id, 
       p.product_name, 
       p.quantity_per_unit, 
       p.unit_price, 
       c.category_id, 
       c.name
from product as p inner join category as c on p.category_id = c.category_id

SELECT * FROM adm.product_category;

delimiter //
CREATE DEFINER =`root`@`%` PROCEDURE `introduce_values`()
begin
   Insert into customer()
   values(11, "Alberto Gomes", "InovationX", "Alverto@Gomes.com", "890 Central Plaza, Suite 567", "Los Angeles", "USA");
 end //
  delimiter ;

use adm;
delimiter //
CREATE DEFINER =`root`@`%` PROCEDURE `update_values`()
begin
	UPDATE `adm`.`customer` set `contact_name` = 'Roberto Ernandes' WHERE (`customer_id` = '11');
 end //
  delimiter ;

use adm;
CREATE INDEX index1 ON adm.product (product_id);

use adm;
CREATE USER 'user_1'@'%' IDENTIFIED BY 'password123';
GRANT SELECT ON product TO 'user_1'@'%';
FLUSH PRIVILEGES;

--SHOW INDEXES FROM nombre_de_la_tabla; = Como ver los indices que tengo en una tabla
--call introduce_values(); = Llamar un procedimiento de almacenado