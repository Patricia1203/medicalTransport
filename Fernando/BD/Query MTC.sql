CREATE DATABASE MTC;

USE MTC;

-- Criação da tabela Usuarios (informações das empresas)
CREATE TABLE Usuarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Empresa VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20),
    CNPJ VARCHAR(18) NOT NULL UNIQUE
);

-- Criação da tabela Medicamentos (informações dos medicamentos)
CREATE TABLE Medicamentos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Tipo VARCHAR(100) NOT NULL
);

-- Criação da tabela Sensores (informações dos sensores de temperatura)
CREATE TABLE Sensores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(255) NOT NULL,
    Status VARCHAR(50) NOT NULL,
    Temperatura_Min DECIMAL(5, 2) NOT NULL,
    Temperatura_Max DECIMAL(5, 2) NOT NULL,
    CONSTRAINT chk_status_sensor CHECK (Status IN ('Ativo', 'Inativo'))
);

-- Criação da tabela MedicoesTemperatura (informações das medições de temperatura)
CREATE TABLE MedicoesTemperatura (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Temperatura DECIMAL(5, 2) NOT NULL,
    Data_Hora DATETIME NOT NULL,
    Localizacao VARCHAR(255),
    Status VARCHAR(50) NOT NULL,
    CONSTRAINT chk_status_medicao CHECK (Status IN ('Normal', 'Alerta', 'Crítico'))
);

-- Inserir dados na tabela Usuarios
INSERT INTO Usuarios (Nome_Empresa, Email, Senha, Telefone, CNPJ)
VALUES 
('Farmácia Exemplo LTDA', 'contato@farmaciaexemplo.com', 'senha123', '(11) 1234-5678', '12.345.678/0001-90');

-- Inserir dados na tabela Medicamentos
INSERT INTO Medicamentos (Nome, Tipo)
VALUES 
('Vacina X', 'Termossensível'),
('Antibiótico Y', 'Não Termossensível');

-- Inserir dados na tabela Sensores
INSERT INTO Sensores (Modelo, Status, Temperatura_Min, Temperatura_Max)
VALUES 
('Sensor T100', 'Ativo', 2.00, 8.00),
('Sensor T200', 'Ativo', 5.00, 15.00);

-- Inserir dados na tabela MedicoesTemperatura
INSERT INTO MedicoesTemperatura (Temperatura, Data_Hora, Localizacao, Status)
VALUES 
(4.5, '2025-03-10 08:00:00', 'Km 100', 'Normal'),
(12.3, '2025-03-10 09:00:00', 'Km 150', 'Alerta'),
(3.2, '2025-03-10 10:00:00', 'Km 200', 'Normal');

-- Atualizar o Status de um Sensor para 'Inativo'
UPDATE Sensores
SET Status = 'Inativo'
WHERE ID = 1;

-- Atualizar o Status de uma Medição de Temperatura para 'Crítico'
UPDATE MedicoesTemperatura
SET Status = 'Crítico'
WHERE ID = 2;

-- Atualizar o Nome de uma empresa para 'Farmacia Do Seu João'
UPDATE Usuarios
SET Nome_Empresa = 'Farmacia Do Seu João'
WHERE ID = 1;