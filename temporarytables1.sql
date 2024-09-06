use companydb;

create temporary table temporari (
Firstname varchar (100),
ID int,
Location varchar (100),
Workplace varchar (100)
);

insert into temporari (Firstname, ID, Location, Workplace) values
('Ntabo',2952, 'Kisumu', 'Safaricom'),
('Berryl', 3066, 'Kericho', 'Fablab'),
('Branice', 4589, 'Busia', 'Kenya Women');

select * from temporari;




