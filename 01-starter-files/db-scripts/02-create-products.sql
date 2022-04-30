-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('Dresses');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1000', 'The Snow Of The Bell Sweetheart Neckline Lolita Dress Two Color Options Lolita JSK', 'Features: Sweetheart neckline, bowknots at the shoulder and waist.',
'assets/images/products/dresses/DRESSES-0-1000.png'
,1,100,99.50,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1001', 'Easter Bunny Ruffle Hemline Lolita Dress Three Color Options Lolita JSK', 'Features: Bowknot at the bodice and the waist, rabbit print, ruffle hemline.',
'assets/images/products/dresses/DRESSES-0-1001.png'
,1,100,67.00,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1002', 'Black And White Tiered Ruffles Lolita Dress Full Set', 'Features: V neckline, bowknots at the shoulders, tiered ruffles skirt.',
'assets/images/products/dresses/DRESSES-0-1002.png'
,1,100,140.00,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1003', 'Girl''s Prayer Tiered Ruffle Lolita Dress Three Color Options Lolita JSK', 'Features:  bowknots at neckline and back, tiered ruffles skirt.',
'assets/images/products/dresses/DRESSES-0-1003.png'
,1,100,325.00,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1004', 'Cross Belle Halter Neckline Slim Bodice Short Skirt Lolita Dress Six Color Options Lolita JSK', 'Features: Halter neckline with cross decoration, vintage slim bodice, lace up back, tulle pick-up design of the first layer of the skirt.',
'assets/images/products/dresses/DRESSES-0-1004.png'
,1,100,74.75,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1005', 'Little Teddy Brown Plaid Lolita Dress Short Sleeves OP', 'Features: Teddy brown plaid dress, gorgeous petal skirt hemline.',
'assets/images/products/dresses/DRESSES-0-1005.png'
,1,100,65.80,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1006', 'Mountain Sea Carol Flounce Hemline Han Hanayome Lolita Dress JSK Full Set', 'Features: It features lapel collar, flounce hemline exquisite embroidered gorgeous lolita dress.',
'assets/images/products/dresses/DRESSES-0-1006.png'
,1,100,769.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DRESSES-0-1007', 'Polka Waltz 4 Colors Sweetheart Neckline Elegant Lolita Dress JSK', 'Features: It features sweetheart neckline with bowknot front, empire waist. There is shirring and lace-up on the back, drawstring design on the skirt, flounce hemline.',
'assets/images/products/dresses/DRESSES-0-1007.png'
,1,100,54.50,1, NOW());

INSERT INTO product_category(category_name) VALUES ('Headpieces');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('HEADPIECES-0-1000', 'Night Mountain In Dream Lolita OP Matching Mini Hat', 'Attention: This price is for a mini hat only, others are not included.',
'assets/images/products/headpieces/HEADPIECES-0-1000.png'
,1,100,19.40,2, NOW());
