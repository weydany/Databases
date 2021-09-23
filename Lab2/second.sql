CREATE TABLE customers(
    id integer PRIMARY KEY,
    full_name varchar(50) NOT NULL,
    timestamp timestamp NOT NULL,
    delivery_address text NOT NULL
);

CREATE TABLE orders(
    code integer PRIMARY KEY,
    customer_id integer references customers(id),
    total_sum double precision NOT NULL CHECK (total_sum > 0),
    is_paid boolean NOT NULL
);

CREATE TABLE products(
    id varchar PRIMARY KEY,
    name varchar UNIQUE NOT NULL,
    description text,
    price double precision NOT NULL CHECK(price > 0)
);

CREATE TABLE order_items(
    order_code integer references orders(code),
    product_id varchar references products(id),
    quantity integer CHECK(quantity > 0),
    PRIMARY KEY(order_code, product_id)
);

