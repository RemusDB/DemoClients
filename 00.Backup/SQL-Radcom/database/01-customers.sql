CREATE TABLE IF NOT EXISTS customers (
  id varchar(32) DEFAULT NULL,
  first_name varchar(32) DEFAULT NULL,
  last_name varchar(32) DEFAULT NULL,
  year int DEFAULT NULL,
  phone_number varchar(32) NULL,
  city_address varchar(32) DEFAULT NULL
);

INSERT INTO customers (id, first_name, last_name, year, phone_number, city_address) VALUES 
('XFC-345-ERT',              'Tamar',  'Pearson',  2021, '03-382-4657', 'Tel Aviv'),
('ART-456-6GH',              'David',  'Wiens',  2019, '04-462-1526', 'Haifa'),
('XHG-E3R-E19',              'Yosef',  'Morgan',  2006, '09-235-2348', 'Ashdod'),
('XGH-5R5-TY6',              'Ariel',  'Martins',  2008, '03-235-9598', 'Tel Aviv'),
('9YU-R4T-RRY',              'Maya',  'Pearson',  2013, '08-456-3328', 'Petah Tikva'),
('235-33R-4TG',              'Ayala',     'Noam', 2018, '07-334-4231', 'Bat Yam');
