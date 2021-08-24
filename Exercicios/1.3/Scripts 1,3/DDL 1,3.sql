CREATE DATABASE PClinics;
GO

USE PClinics;
GO

CREATE TABLE Clinica(
	idClinica INT PRIMARY KEY IDENTITY(1,1),
	nomeClinica VARCHAR(34) NOT NULL UNIQUE,
	endClinica VARCHAR(44) NOT NULL
);

CREATE TABLE Especie(
	idEspecie INT PRIMARY KEY IDENTITY(1,1),
	nomeEspecie VARCHAR(24) NOT NULL UNIQUE
);

CREATE TABLE Raca(
	idRaca SMALLINT PRIMARY KEY IDENTITY(1,1),
	idEspecie INT FOREIGN KEY REFERENCES Especie(idEspecie),
	nomeRaca VARCHAR(27) NOT NULL UNIQUE
);

CREATE TABLE Dono(
	idDono INT PRIMARY KEY IDENTITY(1,1),
	nomeDono VARCHAR(47) NOT NULL
);

CREATE TABLE Pet(
	idPet INT PRIMARY KEY IDENTITY(1,1),
	idEspecie INT FOREIGN KEY REFERENCES Especie(idEspecie),
	idRaca SMALLINT FOREIGN KEY REFERENCES Raca(idRaca),
	idDono INT FOREIGN KEY REFERENCES Dono(idDono),
	nomePet VARCHAR(24) NOT NULL,
	dataNasc DATE NOT NULL
);

CREATE TABLE Veterinario(
	idVeterinario INT PRIMARY KEY IDENTITY(1,1),
	idClinica INT FOREIGN KEY REFERENCES Clinica(idClinica),
	nomeVeterinario VARCHAR(44) NOT NULL
);

CREATE TABLE Atendimento(
	idAtendimento INT PRIMARY KEY IDENTITY(1,1),
	idClinica INT FOREIGN KEY REFERENCES Clinica(idClinica),
	idVeterinario INT FOREIGN KEY REFERENCES Veterinario(idVeterinario),
	idPet INT FOREIGN KEY REFERENCES Pet(idPet),
	dataAtendimento DATETIME NOT NULL
);