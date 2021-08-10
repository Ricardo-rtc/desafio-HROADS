USE SENAI_HROADS_MANHA;
GO

INSERT INTO Personagem (idClasse,nome,capVida,capMana,dataAtt,dataCriacao)
VALUES (1,'DeuBug',100,80,'2021-08-10','2019-01-18');
GO

INSERT INTO Personagem (idClasse,nome,capVida,capMana,dataAtt,dataCriacao)
VALUES (4,'BitBug',70,100,'2021-08-10','2016-03-17');
GO

INSERT INTO Personagem (idClasse,nome,capVida,capMana,dataAtt,dataCriacao)
VALUES (7,'Fer8',75,60,'2021-08-10','2018-03-18');
GO

INSERT INTO Classe (nomeClasse)
VALUES ('Bárbaro'),('Cruzado'),('Caçadora de Demônios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');
GO

INSERT INTO Tipo_Habilidade(nomeTipoHabilidade)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');
GO

INSERT INTO Habilidade(idTipoHabilidade,nomeHabilidade)
VALUES (1,'Lança Mortal');
GO

INSERT INTO Habilidade(idTipoHabilidade,nomeHabilidade)
VALUES (2,'Escudo Supremo');
GO

INSERT INTO Habilidade(idTipoHabilidade,nomeHabilidade)
VALUES (3,'Recuperar Vida');
GO

INSERT INTO Classe_Habilidade(idClasse,idHabilidade)
VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(6,NULL),(5,3),(7,NULL)

UPDATE Personagem
SET nome = 'Fer7'
WHERE idPersonagem = 6

UPDATE Classe
SET nomeClasse = 'Necromancer'
WHERE idClasse = 5

