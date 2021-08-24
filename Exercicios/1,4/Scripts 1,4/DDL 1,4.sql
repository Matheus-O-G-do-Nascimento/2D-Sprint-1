CREATE DATABASE OptusMusic;
GO

USE OptusMusic;
GO

CREATE TABLE Album(
	idAlbum INT PRIMARY KEY IDENTITY(1,1),
	nomeAlbum VARCHAR(27) NOT NULL UNIQUE,
	qtdMusicas TINYINT NOT NULL
);

CREATE TABLE Estilo(
	idEstilo SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeEstilo VARCHAR(24) NOT NULL UNIQUE
);

CREATE TABLE EstiloAlbum(
	idEstiloAlbum INT PRIMARY KEY IDENTITY(1,1),
	idEstilo SMALLINT FOREIGN KEY REFERENCES Estilo(idEstilo),
	idAlbum INT FOREIGN KEY REFERENCES Album(idAlbum)
);

CREATE TABLE Permissao(
	idPermissao INT PRIMARY KEY IDENTITY(1,1),
	tipoPermissao VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY IDENTITY(1,1),
	idPermissao INT FOREIGN KEY REFERENCES Permissao(idPermissao),
	nomeUsuario varchar(47) NOT NULL UNIQUE,
	endEmail VARCHAR(27) NOT NULL UNIQUE,
	Senha VARCHAR(20) NOT NULL
);

CREATE TABLE Artista(
	idArtista INT PRIMARY KEY IDENTITY(1,1),
	idEstiloDoAlbum INT FOREIGN KEY REFERENCES EstiloAlbum(idEstiloAlbum),
	idPermissao INT FOREIGN KEY REFERENCES Permissao(idPermissao),
	nomeArtista VARCHAR(47) NOT NULL UNIQUE
);

CREATE TABLE Cadastro(
	idCadastro INT PRIMARY KEY IDENTITY(1,1),
	idArtista INT FOREIGN KEY REFERENCES Artista(idArtista),
	idUsuario INT FOREIGN KEY REFERENCES Usuario(idUsuario)
);

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY IDENTITY(1,1),
	idCadastro INT FOREIGN KEY REFERENCES Cadastro(idCadastro)
);