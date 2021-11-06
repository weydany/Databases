--a
CREATE VIEW clients AS
    SELECT client.name AS client, sell.date AS date, avg(sell.amount) AS avg_purchase, sum(sell.amount) astotal_purchase
    FROM client JOIN sell ON client.id = sell.client_id AND client.dealer_id = sell.dealer_id
    GROUP BY (client.name, sell.date);

--b
CREATE VIEW top_5 as
    SELECT *
    FROM (SELECT * FROM purchase_amount ORDER BY sum(amount) DESC)
    LIMIT 5;

--c
CREATE VIEW dealer_sell AS
    SELECT dealer.name, count(sell.id) AS count_sell, avg(amount) AS avg_amount, sum(amount) AS sum_amount
    FROM dealer JOIN sell ON dealer.id = sell.dealer_id
    GROUP BY (dealer.name);

--e
CREATE VIEW loc_sells AS
    SELECT dealer.location, count(sell.id) AS count_sell, avg(amount) AS avg_amount, sum(amount) AS total_amount_sell
    FROM dealer JOIN sell ON dealer.id = sell.dealer_id
    GROUP BY dealer.location;
    
--f
CREATE VIEW city_sells AS
    SELECT client.city, count(sell.id) AS count_sell, avg(amount) AS avg_amount, sum(amount) AS total_amount_expenses
    FROM client JOIN sell ON client.id = sell.client_id
    GROUP BY client.city;
