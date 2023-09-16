create table laptop(id integer primary key, brand varchar(15), color varchar(25),price integer);

select * from laptop;

insert into laptop values (1,'hp','black',800);
insert into laptop values (2,'dell','white',900);
insert into laptop values (3,'msi','gray',950);
insert into laptop values (4,'apple','white',1000);
insert into laptop values (5,'toshiba','red',1100);

update laptop set price = 3000 where id = 5;

delete laptop where id =5;

update laptop set color = '' where id =3;

alter table laptop rename column price to priceDollar;
alter table laptop rename to laptop123;

select brand from LAPTOP123;