create database consesonaria;
use consesonaria;

create table veiculo (
chassi char(17) primary key,
marca enum('chevrolet','fiat','rolls-royce', 'land-Rover') not null,
valor float not null,
categoria varchar(36) not null,
ano date not null
);

insert into veiculo values('12345678901234567','chevrolet','50000.00','SUV','2020-07-19');
insert into veiculo values('12345678901233562','fiat','70000.00','sedan','2019-05-07');
insert into veiculo values('12345678901230987','rolls-royce','1150000.00','sedan','2023-11-09');
insert into veiculo values('12345678901233532','chevrolet','70000.00','Picape','2019-11-05');
insert into veiculo values('12345678901230956','land-Rover','2150000.00','SUV','2023-12-29');

select * from consesonaria.veiculo;