INSERT INTO Pessoa VALUES ('Luan', 'lab7@cin.ufpe.br', ID.NEXTVAL)
INSERT INTO Pessoa VALUES ('Vitor', 'vlma@cin.ufpe.br', ID.NEXTVAL)
INSERT INTO Pessoa VALUES ('Luan', 'lab7@cin.ufpe.br', ID.NEXTVAL)
INSERT INTO Pessoa VALUES ('Lucio', 'lfmm2@cin.ufpe.br', ID.NEXTVAL)
INSERT INTO Pessoa VALUES ('Eden', 'eeas@cin.ufpe.br', ID.NEXTVAL)
INSERT INTO Pessoa VALUES ('Saulo', 'sfgl@cin.ufpe.br', ID.NEXTVAL)

UPDATE Pessoa SET nome = 'mary jane', email = 'mj@cin.ufpe.br' WHERE ID = 3

SELECT * FROM Pessoa order by nome

INSERT INTO Usuario VALUES (1, 21)
INSERT INTO Usuario VALUES (2, 17)
INSERT INTO Usuario VALUES (3, 6560)
INSERT INTO Usuario VALUES (4, 2045)

SELECT * FROM Usuario order by usuario_id

INSERT INTO Artista VALUES (4, 'roque-do-lucio.com');
INSERT INTO Artista VALUES (5, 'brega-do-eden.com');
INSERT INTO Artista VALUES (6, 'classico-do-zaulao.com');

SELECT * FROM Artista order by artista_id;

INSERT INTO Telefone VALUES (4, 666)
INSERT INTO Telefone VALUES (4, 777)
INSERT INTO Telefone VALUES (5, 696969)
INSERT INTO Telefone VALUES (6, 300)

SELECT * FROM Telefone;

SELECT A.artista_id, P.nome, T.telefone FROM Pessoa P, Artista A, Telefone T WHERE A.artista_id = T.artista_id AND A.artista_id = P.id

SELECT * FROM Musica

INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Breguinha Gostoso', 3000)
INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Rock Pesado', 3000)
INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Classico longo', 8000)
INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'jazz suave', 3232)
INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Gospel Satânico', 666)

INSERT INTO Musica(musica_id, duracao_segundos) VALUES (musica_id.NEXTVAL, 2000)

SELECT * FROM MUSICA WHERE duracao_segundos BETWEEN 300 AND 3000

DELETE FROM Musica WHERE nome IS NULL

SELECT * FROM MUSICA WHERE duracao_segundos BETWEEN 300 AND 3000

