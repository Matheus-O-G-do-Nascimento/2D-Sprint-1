CREATE DATABASE Locadora;
GO

USE Locadora;
GO

CREATE TABLE Empresa(
    idEmpresa TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEmpresa VARCHAR(24) NOT NULL UNIQUE
);

CREATE TABLE Marca(
	idMarca SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeMarca VARCHAR(37) NOT NULL UNIQUE
);

CREATE TABLE Modelo(
	idModelo INT PRIMARY KEY IDENTITY(1,1),
	idMarca SMALLINT FOREIGN KEY REFERENCES Marca(idMarca),
	nomeModelo VARCHAR(24) NOT NULL UNIQUE
);

CREATE TABLE Ve?culo(
	idVeiculo INT PRIMARY KEY IDENTITY(1,1),
	idModelo INT FOREIGN KEY REFERENCES Modelo(idModelo),
	idMarca SMALLINT FOREIGN KEY REFERENCES Marca(idMarca),
	idEmpresa TINYINT FOREIGN KEY REFERENCES Empresa(idEmpresa),
	placaVeiculo CHAR(7) NOT NULL UNIQUE
);

CREATE TABLE Cliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1),
	nomeCliente VARCHAR(47) NOT NULL,
	cpfCliente CHAR(11) NOT NULL UNIQUE
);

CREATE TABLE Aluguel(
	idAluguel INT PRIMARY KEY IDENTITY(1,1),
	idVeiculo INT FOREIGN KEY REFERENCES Ve?culo(idVeiculo),
	idCliente INT FOREIGN KEY REFERENCES Cliente(idCliente),
	dataAluguel SMALLDATETIME NOT NULL
);
