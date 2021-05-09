CREATE KEYSPACE quickstart_keyspace WITH REPLICATION = {
  'class': 'SimpleStrategy',
  'replication_factor': 1
};

CREATE TABLE quickstart_keyspace.orders(
  customer_id int,
  order_id int,
  product text,
  PRIMARY KEY(customer_id, order_id)
) WITH cdc = {'enabled': true};

INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 1, 'pizza');
INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 2, 'cookies');
INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 3, 'tea');
INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 4, 'pizza');
INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 5, 'cookies');
INSERT INTO quickstart_keyspace.orders(customer_id, order_id, product) VALUES (1, 6, 'tea');