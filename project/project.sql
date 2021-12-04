CREATE TABLE customer(
    id INT PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    age INT NOT NULL,
    login VARCHAR(15) NOT NULL,
    password INT NOT NULL,
    subscription_id INT,
    store_id INT,
    credit_card_id INT,
    FOREIGN KEY (subscription_id) REFERENCES subscription(id),
    FOREIGN KEY (store_id) REFERENCES store(id),
    FOREIGN KEY (credit_card_id) REFERENCES  credit_card(id)
);

CREATE TABLE subscription(
    id INT PRIMARY KEY,
    date_of_payment INT NOT NULL,
    price INT NOT NULL
);

CREATE TABLE credit_card(
    id INT PRIMARY KEY,
    card_num INT NOT NULL,
    date_of_issue INT NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    CVC_CVV INT NOT NULL
);

CREATE TABLE location(
    id INT PRIMARY KEY,
    country VARCHAR(15) NOT NULL,
    city VARCHAR(15) NOT NULL,
    street VARCHAR(15) NOT NULL,
    num_of_house INT NOT NULL
);

CREATE TABLE store(
    id INT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    location_id INT,
    product_id INT,
    FOREIGN KEY (location_id) REFERENCES location(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE stock(
    id INT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    location_id INT,
    store_id INT,
    electronics_id INT,
    FOREIGN KEY (location_id) REFERENCES location(id),
    FOREIGN KEY (store_id) REFERENCES store(id),
    FOREIGN KEY (electronics_id) REFERENCES electronics(id)
);

CREATE TABLE electronics(
    id INT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    fabrication VARCHAR(15) NOT NULL,
    price INT NOT NULL,
    licence INT NOT NULL,
    description VARCHAR(15) NOT NULL
);

CREATE TABLE employees(
    id INT PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    email INT NOT NULL,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES location(id)
);

CREATE TABLE product(
    id INT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    price INT NOT NULL,
    licence INT NOT NULL,
    description VARCHAR(150) NOT NULL
);

CREATE TABLE category(
    id INT PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    description VARCHAR(150) NOT NULL
);


CREATE TABLE delivery(
    id INT PRIMARY KEY,
    product_id INT,
    location_id INT,
    transport VARCHAR(15) NOT NULL,
    sending_time INT NOT NULL,
    tracking_num INT NOT NULL,
    shipper_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (location_id) REFERENCES location(id),
    FOREIGN KEY (shipper_id) REFERENCES shipper(id)
);


CREATE TABLE shipper(
    id INT PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

