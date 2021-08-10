USE SENAI_HROADS_MANHA;
GO

--6. Selecionar todos os personagens

SELECT * FROM personagem;
GO

--7. Selecionar todas as classes

SELECT * FROM classe;
GO

--8. Selecionar somente o nome das classes

SELECT nomeClasse 'Nome das classes' FROM classe;
GO

--9. Selecionar todas as habilidades

SELECT nomeHabilidade Habilidades FROM habilidade;
GO

--10. Realizar a contagem de quantas habilidades estão cadastradas

SELECT COUNT(nomeHabilidade) FROM habilidade;
GO

--11. Selecionar somente os id’s das habilidades classificando-os por ordem crescente
SELECT idClasse 'Id da classe' FROM classe
ORDER BY idClasse asc;
GO

--12. Selecionar todos os tipos de habilidades

SELECT * FROM Tipo_Habilidade;
GO

--13. Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte

SELECT nomeHabilidade Habilidade, nomeTipoHabilidade 'Tipo da Habilidade' FROM habilidade
LEFT JOIN Tipo_Habilidade
ON Tipo_Habilidade.idTipoHabilidade = habilidade.idTipoHabilidade;
GO

--14. Selecionar todos os personagens e suas respectivas classes

SELECT idPersonagem 'Id do personagem', nome 'Nome do personagem', nomeClasse 'Nome da Classe', capVida 'Capacidade de vida', capMana 'Capacidade de mana'
FROM personagem
LEFT JOIN classe
ON classe.idClasse = personagem.idClasse;
GO

--15. Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);

SELECT nome Personagens, nomeClasse Classes FROM personagem
FULL OUTER JOIN classe
ON personagem.idClasse = classe.idClasse;
GO

--16. Selecionar todas as classes e suas respectivas habilidades

SELECT nomeClasse AS [Nome da classe], nomeHabilidade AS 'Nome da habilidade'
FROM Classe_Habilidade
LEFT JOIN classe 
ON Classe.idClasse = classe.idClasse
LEFT JOIN habilidade
on Habilidade.idHabilidade = habilidade.idHabilidade;
GO


--17. Selecionar todas as habilidades e suas classes (somente as que possuem correspondência)

SELECT nomeClasse, nomeHabilidade From Classe_Habilidade
INNER JOIN classe
ON classe.idClasse = Classe_Habilidade.idClasse
INNER JOIN habilidade
ON habilidade.idHabilidade = Classe_Habilidade.idHabilidade;
GO

--18. Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).

SELECT nomeHabilidade 'Nome da habilidade', nomeClasse [Nome da classe]
FROM Classe_Habilidade
FULL OUTER JOIN habilidade
on Classe_Habilidade.idHabilidade = habilidade.idHabilidade
FULL OUTER JOIN classe 
ON Classe_Habilidade.idClasse = classe.idClasse;
GO