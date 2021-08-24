USE LOCADORA;
GO

INSERT INTO Empresa (nomeEmpresa)
VALUES ('Unidas'),('Localiza')

INSERT INTO Cliente (nomeCliente, cpfCliente)
VALUES('Geraldo Brabeiro','321'),('Tom Zé','789')

INSERT INTO Marca (nomeMarca)
VALUES ('GM'),('Fiat'),('Ford')

INSERT INTO Modelo (nomeModelo, idMarca)
VALUES ('Onix','1'), ('Argo','2'), ('Fiesta','3')

INSERT INTO Veículo (placaVeiculo, idModelo, idMarca, idEmpresa)
VALUES ('732','3','3','2'), ('561','1','2','1'), ('616','2','1','1')

INSERT INTO Aluguel (idVeiculo, dataAluguel, idCliente)
VALUES ('2','2021-01-03 10:33',5), ('3','2021-03-02 10:34',4), ('1','2021-07-15 10:35',5)
