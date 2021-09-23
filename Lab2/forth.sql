INSERT INTO customers
VALUES(1111, 'Someone', '23.09.2021 17:26:21', 'Almaty')

INSERT INTO orders VALUES(13, 1111, 1500.29, true);

UPDATE orders SET is_paid = false WHERE code = 13;

DELETE FROM customers WHERE id = 1111