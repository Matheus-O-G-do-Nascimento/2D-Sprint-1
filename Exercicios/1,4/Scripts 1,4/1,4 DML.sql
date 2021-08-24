USE OptusMusic;
GO

INSERT INTO Album (nomeAlbum, qtdMusicas)
VALUES ('Off The Wall','10'), ('Rubber Soul','12')

INSERT INTO Estilo (nomeEstilo)
VALUES ('Pop'), ('Rock')

INSERT INTO EstiloAlbum (idEstilo, idAlbum)
VALUES (1,1), (2,2)

INSERT INTO permissao (tipoPermissao)
VALUES ('Administrador'), ('Comum')

INSERT INTO Usuario (idPermissao, nomeUsuario, endEmail, senha)
VALUES (2,'Ziraldo','meninomaluquinho54@email.com','1985'), (2,'The Big Dipper','wiltthestilt13@gmail.com','1990')

INSERT INTO Artista (idEstiloDoAlbum, nomeArtista, idPermissao)
VALUES (1,'Michael Jackson',1), (2,'The Beatles',1)

INSERT INTO Cadastro (idArtista, idUsuario)
VALUES (1,NULL), (2,NULL), (NULL,1), (NULL,2)

INSERT INTO Empresa (idCadastro)
VALUES (1), (2), (3), (4)