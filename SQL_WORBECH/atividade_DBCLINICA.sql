-- Criação do banco de dados
CREATE DATABASE DBCLINICA;
USE DBCLINICA;

-- Criação da tabela Sala
CREATE TABLE Sala (
    Numero_Sala INT NOT NULL UNIQUE CHECK (Numero_Sala > 1 AND Numero_Sala < 50),
    Andar INT NOT NULL CHECK (Andar < 12),
    PRIMARY KEY (Numero_Sala)
);

-- Criação da tabela Medicos
CREATE TABLE Medicos (
    CRM INT NOT NULL UNIQUE,
    Nome VARCHAR(40) NOT NULL,
    Idade INT CHECK (Idade > 23),
    Especialidade CHAR(20) NOT NULL DEFAULT 'Ortopedia',
    CPF VARCHAR(15) NOT NULL UNIQUE,
    Data_Admissao DATE,
    PRIMARY KEY (CRM)
);

-- Criação da tabela Pacientes
CREATE TABLE Pacientes (
    CPF VARCHAR(11) NOT NULL UNIQUE,
    Nome VARCHAR(40) NOT NULL,
    Data_Nascimento DATE,
    Cidade CHAR(30) DEFAULT 'Taguatinga',
    Doenca VARCHAR(40) NOT NULL,
    Plano_Saude VARCHAR(40) NOT NULL DEFAULT 'SUS',
    PRIMARY KEY (CPF)
);

-- Criação da tabela Funcionarios
CREATE TABLE Funcionarios (
    Matricula INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    Data_Admissao DATE NOT NULL,
    Cargo VARCHAR(40) NOT NULL DEFAULT 'Assistente Médico',
    Salario DECIMAL(10, 2) NOT NULL DEFAULT 1510.00,
    PRIMARY KEY (Matricula)
);