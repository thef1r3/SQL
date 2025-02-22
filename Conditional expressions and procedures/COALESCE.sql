CREATE TABLE products(
Item VARCHAR(50),
Price INTEGER,
Discount INTEGER
);

INSERT INTO products(
Item,
Price,
Discount
)
VALUES(
'Apples',
200,
20
);

INSERT INTO products(
Item,
Price,
Discount
)
VALUES(
'Oranges',
220,
55
);

INSERT INTO products(
Item,
Price,
Discount
)
VALUES(
'Grapes',
180,
NULL
);

SELECT * FROM products;

SELECT item, (price-COALESCE(discount,0)) AS final_prices
FROM products;