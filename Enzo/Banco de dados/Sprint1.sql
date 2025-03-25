CREATE DATABASE sprint1;
USE sprint1;

CREATE TABLE Cadastro (
idUsuário INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40) NOT NULL,
email VARCHAR (40) NOT NULL,
telefone BIGINT NOT NULL,
cnpj BIGINT NOT NULL,
senha VARCHAR (25) NOT NULL
);

CREATE TABLE SensorTemp (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
horasensor DATETIME NOT NULL,
temperatura CHAR (3) NOT NULL
);

CREATE TABLE Veiculo (
idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
origemlocal VARCHAR (40) NOT NULL,
destinolocal VARCHAR (40) NOT NULL,
horasaída DATETIME NOT NULL,
horachegada DATETIME NOT NULL
);

ALTER TABLE Veiculo ADD COLUMN placa CHAR (7);
ALTER TABLE Veiculo MODIFY COLUMN placa CHAR (7) NOT NULL;
Desc Veiculo;

INSERT INTO Cadastro (nome, email, telefone, cnpj, senha) VALUES
('João Roberto', 'JoãoRobert0@gmail.com', 11344610981, 99012345000129, 'JoãoRoberto_123'),
('Gabriel Teles', 'GabrielTeles@outlook.com', 11989873306, 28678901000114, 'GabrielTelesS123'),
('Breno Freitas', 'BrenitoFreitas@gmail.com', 11238964415, 54234567000148, 'BrenitoFreitas123');

SELECT * FROM Cadastro;

INSERT INTO SensorTemp (horasensor, temperatura) VALUES
('2025-03-11', 4),
('2025-03-12', 6),
('2025-03-13', 7),
('2025-03-14', 5);

SELECT * FROM SensorTemp;

INSERT INTO Veiculo (origemlocal, destinolocal, horasaída, horachegada, placa) VALUES
('Paulista', 'Caieras', '2025-03-11 08:00:00', '2025-03-11 13:00:00', 'ABCD040'),
('Osasco', 'Morumbi', '2025-03-12 10:30:00', '2025-03-12 15:00:00', 'EFGH300'),
('São Bernardo', 'São Bernardo do Campo', '2025-03-13 07:00:00', '2025-03-13 08:15:00', 'IJKL234'),
('Capão Redondo', 'Pinheiros', '2025-03-14 11:00:00', '2025-03-14 11:50:00', 'MNOP567');

SELECT * FROM Veiculo;

