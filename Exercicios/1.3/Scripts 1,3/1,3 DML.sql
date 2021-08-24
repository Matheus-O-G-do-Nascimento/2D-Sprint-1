USE PClinics;
GO

INSERT INTO Clinica (nomeClinica, endClinica)
VALUES ('DogaShow','Av.Brasil, 123'), ('Purina','Rua Samos, 79'), ('St.Pet','Estrada dos Bandeirantes, 786')

INSERT INTO Especie (nomeEspecie)
VALUES ('Gato'), ('Cachorro')

INSERT INTO Raca (nomeRaca, idEspecie)
VALUES ('Huskies',1), ('Não identificado',1), ('Chartreux',2)

INSERT INTO Dono (nomeDono)
VALUES ('Berg'), ('Humberto'), ('Dadá')

INSERT INTO Pet (nomePet, dataNasc, idEspecie, idRaca, idDono)
VALUES ('Jussara','2003-07-26',1,3,3), ('Josias','2004-09-13',1,2,1), ('Jonas','2015-02-21',2,1,2)

INSERT INTO Veterinario (nomeVeterinario, idClinica)
VALUES ('Joabson',3), ('Thobiasson',1), ('Claudelson',2)

INSERT INTO Atendimento (idClinica, idVeterinario, idPet, dataAtendimento)
VALUES(2,3,1,'2021-08-15 10:10'), (3,1,2,'2021-04-04 11:11'), (1,2,3,'2021-06-30 12:12')
