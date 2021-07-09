/* 1. Получить список клиентов (ФИО), которые совершали заказы 
в период с 01.01.18 по 02.01.18
В заказах был товар X, производителя Y*/

SELECT 
    c.full_name
FROM
    online_shop.clients c
        LEFT JOIN
    online_shop.orders o ON c.users_id = o.clients_id
        LEFT JOIN
    online_shop.order_products op ON o.id = op.orders_id
        LEFT JOIN
    online_shop.products p ON op.products_id = p.id
        LEFT JOIN
    online_shop.products_values pv ON p.id = pv.products_id
        LEFT JOIN
    online_shop.product_keys pk ON pv.keys_id = pk.id
WHERE
    p.name = 'X' AND pv.value = 'Y'
        AND YEAR(o.created_at) = 2018
        AND MONTH(o.created_at) = 01
        AND DAY(o.created_at) BETWEEN 01 AND 02

-------------------------------------------------------------------------------------
/* 2. Получить список заказов от клиентов с именем Иван, 
которые совершали заказы в период с 01.01.18 по 02.01.18
Сумма заказов от клиентов за период больше или равно 350тыс.р.*/

SELECT 
    c.full_name, SUM(total_price) AS sum_order
FROM
    online_shop.clients c
        JOIN
    orders o ON c.users_id = o.clients_id
        JOIN
    order_products op ON o.id = op.orders_id
WHERE
    full_name LIKE '%ivan%'
        AND YEAR(o.created_at) = 2018
        AND MONTH(o.created_at) = 01
        AND DAY(o.created_at) BETWEEN 01 AND 02
GROUP BY c.full_name
HAVING SUM(total_price) >= 350000

-------------------------------------------------------------------------------------
/*Список заказов с условно проблемными доставками. 
Доставка была сделана водителями с плохим откликом от высокодоходных клиентов.*/

SELECT DISTINCT
    orders_id
FROM
    online_shop.order_products
WHERE
    orders_id IN (SELECT 
            orders_id
        FROM
            online_shop.delivery
        WHERE
            id IN (SELECT 
                    delivery_id
                FROM
                    online_shop.review
                WHERE
                    rating_delivery = 1)
                AND method_delivery = 'courier')
GROUP BY orders_id
HAVING SUM(total_price) >= 1000000000

--------------------------------------------------------------------------------------
/*Представление: список клиентов с заказами*/

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `info_clients_orders` AS
    SELECT 
        `u`.`id` AS `id`,
        `c`.`full_name` AS `full_name`,
        `u`.`phone` AS `phone`,
        GROUP_CONCAT(`o`.`id`
            SEPARATOR ',') AS `orders_id`
    FROM
        ((`clients` `c`
        LEFT JOIN `users` `u` ON ((`c`.`users_id` = `u`.`id`)))
        JOIN `orders` `o` ON ((`u`.`id` = `o`.`clients_id`)))
    GROUP BY `u`.`id`

#select * from info_clients_orders
-------------------------------------------------------------------------------------
/*Представление: список продуктов с высоким рейтингом*/

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `high_rating_of_products` AS
    SELECT 
        `r`.`products_id` AS `products_id`,
        `p`.`name` AS `name`,
        `r`.`rating_product` AS `rating_product`
    FROM
        (`review` `r`
        JOIN `products` `p` ON ((`r`.`products_id` = `p`.`id`)))
    WHERE
        (`r`.`rating_product` = 5) 
    UNION SELECT 
        `r`.`products_id` AS `products_id`,
        `p`.`name` AS `name`,
        `r`.`rating_product` AS `rating_product`
    FROM
        (`review` `r`
        JOIN `products` `p` ON ((`r`.`products_id` = `p`.`id`)))
    WHERE
        (`r`.`rating_product` = 4)

#select * from high_rating_of_products

-------------------------------------------------------------------------------------
/*Процедура: список курьеров с определенным рейтингом*/

USE `online_shop`;
DROP procedure IF EXISTS `rating_couriers`;

DELIMITER $$
USE `online_shop`$$
CREATE PROCEDURE `rating_couriers` (in a INT)
BEGIN
SELECT 
    d.courier_id, c.full_name, c.phone, r.rating_delivery
FROM
    online_shop.delivery d
        JOIN
    review r ON d.id = r.delivery_id
        JOIN
    courier c ON d.courier_id = c.id
WHERE
    rating_delivery = a;
END;$$

DELIMITER ;

#call online_shop.rating_couriers(3);