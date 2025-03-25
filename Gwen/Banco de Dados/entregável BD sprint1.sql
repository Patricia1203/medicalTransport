create database PI;
use PI;

-- Primeira tabela

create table cadastroempresa (idempresa int primary key auto_increment, nomeempresa varchar(30) not null, senhaempresa varchar(20) not null,
emailempresa varchar(30) not null, numtelefone bigint not null, cnpj bigint not null);
select * from cadastroempresa;
insert into cadastroempresa values (default, 'joaofarmacias', 'rogerinho123', 'joaofarmacias@gmail.com', 11994830000, 23984123000172);
update cadastroempresa set nomeempresa = 'cleberfarmacias' where idempresa = 1;

-- Segunda tabela

create table sensor (idsensor int primary key auto_increment, nomesensor varchar(45) not null, temperaturamedia decimal(3,1),
datainicio datetime not null, datafinal datetime not null);
select * from sensor;
insert into sensor values (default, 'sensorjoaofarmacias', 2.8, '2025-02-25 12:00:00', '2025-02-25 14:00:00');
update sensor set nomesensor = 'sensorcleberfarmacias' where idsensor = 1;

-- Terceira tabela

create table viagem (idviagem int primary key auto_increment, placaveiculo char(7) not null, datapartida datetime not null, 
datachegada datetime not null, localsaida varchar(45) not null, localchegada varchar(45) not null, nomeresponsavel varchar(45)
not null, idresponsavel char(5) not null);
select * from viagem;
insert into viagem values 
	(default, 'QLM2L59', '2025-02-25 12:45:00', '2025-02-25 13:45:00', 'Farmacos Industrias', 'Farmácia do Seu João', 'Fabiana', '12345');
update viagem set localchegada = 'Hospital Alberto Einsteins' where idViagem = 1;



