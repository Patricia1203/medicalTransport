create database cadastroEmpresa;
use cadastroEmpresa;

create table cadastroEmpresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (45) not null,
tipodemedicamentotransportado varchar (45)not null,
cnpj varchar (18) not null
);

INSERT INTO cadastroEmpresa (nomeEmpresa, tipoDeMedicamentoTransportado, cnpj) VALUES
('Farmalog', 'Vacinas', '12.345.678/0001-01'),
('MediTrans', 'Remédios controlados', '23.456.789/0001-02'),
('BioPharma', 'Produtos biotecnológicos', '34.567.890/0001-03');

select * from cadastroEmpresa;


create database controleSensor;
USE controleSensor;

create table controleSensor (
idSensor int primary key auto_increment,
quantidadeDeSensor varchar (45) not null,
 temperatura decimal (5,2) NOT NULL
);

insert into controleSensor (quantidadeDeSensor, temperatura) values
(5, 2.5),
(8, -4.0),
(3, 6.7);

select * from controleSensor; 


create database Viagem;
use Viagem;
create table Viagem (
idviagem int primary key auto_increment,
dataViagem date not null,
distanciaKM decimal (10,2) not null,
motorista varchar (45),
placaVeiculo varchar (10) not null
);

INSERT INTO Viagem (dataViagem, distanciaKM, motorista, placaVeiculo) VALUES
('2025-03-01', 350.75, 'Carlos Silva', 'ABC1A23'),
('2025-03-05', 220.50, 'Ana Souza', 'XYZ4B56'),
('2025-03-10', 150.00, 'Marcos Lima', 'JKL7C89');

select * from Viagem;


