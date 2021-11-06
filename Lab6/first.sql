--a 
SELECT *
FROM dealer CROSS JOIN client;

--b
SELECT dealer.name, client.name, city, grade, sell.id AS sell_number, date, amount
FROM dealer, client;

--c 
SELECT *
FROM dealer INNER JOIN client ON dealer.location = client.city;

--d
SELECT sell.id, amount, client.name, city
FROM client INNER JOIN sell ON client.id = sell.client_id
WHERE amount BETWEEN 100 AND 500;

--f
SELECT client.name AS client_name, client.city AS city, dealer.name AS dealer_name, dealer.charge AS commission
FROM client JOIN dealer ON client.dealer_id = dealer.id;

--g
SELECT client.name AS clien_tname, client.city AS city, dealer.name AS dealer, dealer.charge AS commission
FROM client LEFT JOIN dealer ON (client.dealer_id = dealer.id AND dealer.charge > 0.12);
