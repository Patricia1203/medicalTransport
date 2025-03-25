use sprint1;

create table Cadastro_Empresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(45) not null,
emailEmpresa varchar(45) not null,
senhaEmpresa varchar(20) not null);

desc Cadastro_Empresa;

insert into Cadastro_Empresa value 
   (default, 'Move transporte', 'movetransp@outlook.com', '8hujin9'),
   (default, 'Fast', 'fast1001@gmail.com', 'fastgrf5'),
   (default, 'Ferlo Transportes', 'ferlotransporte@hotmail.com', '258ll');
   
select * from Cadastro_Empresa;

create table Percurso (
idPercurso int primary key auto_increment,
origemPercurso varchar(45) not null,
destinoPercurso varchar(45) not null,
horasaida datetime,
horachegada datetime);

desc Percurso;

insert into Percurso value
   (default, 'Rua Juio Bom, 25', 'Avenida passagem, 3005', '2025-06-09 13:01:58', '2025-06-09 15:12:25'),
   (default, 'Alameda Guarda, 2564', 'Rua hoilo, 63', '2025-01-08 09:25:02', '2025-01-08 10:31:02'),
   (default, 'Rua Osorio Verde, 78', 'Rua Kionh, 524', '2025-09-25 11:45:45', '2025-10-21 12:30:21');
   
select * from Percurso;
   
create table Cadastro_Veiculo (
idVeiculo int primary key,
placaVeiculo char(7) not null,
motorista varchar(45) not null);

desc Cadastro_Veiculo;

Insert into Cadastro_Veiculo values
   (1, 'FHG2K78', 'Ricardo Gomez'),
   (2, 'RFG6Y09', 'Teresa Fonseca'),
   (3, 'TGH0P98', 'Fernando Silva');
   
select * from Cadastro_Veiculo;

create table Sinal_Alerta (
idAlerta int primary key auto_increment,
horaAlerta datetime,
temperatura char(3));

desc Sinal_Alerta;

Insert into Sinal_Alerta values
   (default, '2025-05-01 12:55:36', 12),
   (default, '2025-06-17 14:48:12', 15),
   (default, '2025-09-21 18:01:11', 21);
   
select * from Sinal_Alerta;


