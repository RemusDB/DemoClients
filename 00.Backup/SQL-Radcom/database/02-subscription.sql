CREATE TABLE IF NOT EXISTS subscriptions (
  id varchar(32),
  plan varchar(32),
  cost int,
  carrier varchar(32)
);

INSERT INTO subscriptions (id, plan, cost, carrier) VALUES
(1, 'Fixed Unlimited Internet',  199, 'Pelephone'),
(2, '3G Mobile', 150, 'Cellcom'),
(3, '5G Mobile',   180, 'Golan Telecom'),
(4, 'Fixed Unlimited',   209, 'Pelephone'),
(5, '3G MobileA',   185, 'Hot Mobile');


