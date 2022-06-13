CREATE TABLE IF NOT EXISTS networks (
  id varchar(17),
  type varchar(10),
  producer varchar(10),
  price decimal(10, 2),
  production_year int,
  owner_id int
);

INSERT INTO networks (id, type, producer, price, production_year, owner_id) VALUES
('LJCPCBLCX14500264', '2G', 'Huawei', 8000.18, 2005, 1),
('WPOZZZ79ZTS372128', '4G', 'Ericsson', 12500.90, 2008, 2),
('JF1BR93D7BG498281', '3G', 'Ericsson', 11300.00, 1999, 2),
('KLATF08Y1VB363636', '3G', 'Ericsson', 3270.50, 1992, 3),
('1M8GDM9AXKP042788', '4G', 'Huawei', 13000.60, 2010, 5),
('1HGCM82633A004352', '5G', 'Huawei', 6420.09, 2003, 4),
('1G1YZ23J9P5800003', '3G', 'Huawei', 5700.13, 1999, 5),
('GS723HDSAK2399002', '2G', 'Ericsson', NULL, 2007, 3);
