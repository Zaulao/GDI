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

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES ({nome}, {email}, {ID});

--

INSERT INTO Artista(artista_id, artista_site) VALUES ({ID}, {artista_site.website[0]});
-- RELAÇÕES 

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Maria Julia Caldeira, rafaelada-conceicao@cunha.com, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Maria Lima, milena62@silva.com, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Mirella Pereira, alexiamoura@alves.com, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Ana Luiza Pires, olivia75@melo.com, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Sr. João Pedro Melo, mcardoso@gomes.br, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Heitor Martins, afreitas@bol.com.br, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Davi Luiz Vieira, cunhajoao-gabriel@hotmail.com, 1);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Gustavo da Luz, ribeirovitor-gabriel@uol.com.br, 1);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (2, http://jesus.org/);
-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Davi Lucca Santos, rpinto@gmail.com, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Giovanna das Neves, sramos@da.net, 2);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (3, http://www.peixoto.br/);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 99195 9122);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 94198 9113);
-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Lara Cunha, rafaelpeixoto@yahoo.com.br, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Anthony da Costa, luanafernandes@pereira.org, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Rafaela da Rocha, barbarada-mata@araujo.br, 3);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, https://pinto.br/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, https://www.mendes.br/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 96507 4897);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 99841 1138);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 98235 1635);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 92361 4049);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Enzo Martins, lucas-gabriel01@ramos.br, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Luiz Gustavo Gonçalves, rezendeluna@moreira.net, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Eloah Duarte, limarafaela@moraes.br, 3);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, https://almeida.net/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, https://www.da.br/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 99450 2978);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 95714 6805);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 95921 7141);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 93687 9906);

--

INSERT INTO Usuario(usuario_id, idade) VALUES (3, 45);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Maria Vitória Monteiro, joao-pedro75@martins.net, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Joaquim Moura, nfarias@santos.br, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Kaique Rezende, vicentegomes@da.com, 3);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, https://oliveira.br/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, http://porto.net/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 97404 8943);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 92465 5056);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 90456 7161);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 97426 5439);

--

INSERT INTO Usuario(usuario_id, idade) VALUES (3, 98);

--

INSERT INTO Musica(musica_id, nome) VALUES (1, Deleniti veniam officia eos explicabo nulla.);
INSERT INTO Musica(musica_id, nome) VALUES (2, Quod mollitia doloremque perspiciatis.);
INSERT INTO Musica(musica_id, nome) VALUES (3, Minima assumenda explicabo ullam magnam.);
-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Pietro Cunha, marianarodrigues@da.org, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Cauã Caldeira, diogo44@yahoo.com.br, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Alana Nunes, emillyrocha@ferreira.br, 3);
INSERT INTO Pessoa(nome, email, ID) VALUES (João Lucas Almeida, ribeiroeduarda@ig.com.br, 4);
INSERT INTO Pessoa(nome, email, ID) VALUES (Srta. Pietra Araújo, nunesgustavo-henrique@hotmail.com, 5);
INSERT INTO Pessoa(nome, email, ID) VALUES (Gustavo Henrique Monteiro, mariana67@ig.com.br, 6);
INSERT INTO Pessoa(nome, email, ID) VALUES (Srta. Ana Sophia Lopes, freitasana-beatriz@nunes.com, 7);
INSERT INTO Pessoa(nome, email, ID) VALUES (Ana Novaes, caua97@hotmail.com, 8);
INSERT INTO Pessoa(nome, email, ID) VALUES (Danilo Jesus, mouralais@bol.com.br, 9);
INSERT INTO Pessoa(nome, email, ID) VALUES (Luiz Miguel Rocha, rodrigorodrigues@da.net, 10);
INSERT INTO Pessoa(nome, email, ID) VALUES (Dr. Leonardo Novaes, catarinamendes@bol.com.br, 11);
INSERT INTO Pessoa(nome, email, ID) VALUES (Clarice Novaes, lucas-gabriel82@da.com, 12);
INSERT INTO Pessoa(nome, email, ID) VALUES (Srta. Amanda Gonçalves, manuela94@ferreira.br, 13);
INSERT INTO Pessoa(nome, email, ID) VALUES (Isabelly Ferreira, cpires@yahoo.com.br, 14);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, http://araujo.com/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, http://oliveira.br/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 91080 1250);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 96610 2457);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 96487 7203);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 98990 9626);

--

INSERT INTO Usuario(usuario_id, idade) VALUES (3, 56);
INSERT INTO Usuario(usuario_id, idade) VALUES (4, 16);
INSERT INTO Usuario(usuario_id, idade) VALUES (5, 52);
INSERT INTO Usuario(usuario_id, idade) VALUES (6, 92);
INSERT INTO Usuario(usuario_id, idade) VALUES (7, 96);
INSERT INTO Usuario(usuario_id, idade) VALUES (8, 25);
INSERT INTO Usuario(usuario_id, idade) VALUES (9, 44);
INSERT INTO Usuario(usuario_id, idade) VALUES (10, 41);
INSERT INTO Usuario(usuario_id, idade) VALUES (11, 15);
INSERT INTO Usuario(usuario_id, idade) VALUES (12, 13);
INSERT INTO Usuario(usuario_id, idade) VALUES (13, 21);
INSERT INTO Usuario(usuario_id, idade) VALUES (14, 41);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Beatriz Lima, viniciuspinto@bol.com.br, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Helena Peixoto, luigimoraes@hotmail.com, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Vitor Hugo Pires, barrossarah@hotmail.com, 3);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, http://www.rodrigues.com/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, http://www.fernandes.br/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 99131 1196);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 90346 1620);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 94426 6973);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 93056 0012);

--

INSERT INTO Usuario(usuario_id, idade) VALUES (3, 54);

--

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES (Raquel Costa, freitasgustavo-henrique@yahoo.com.br, 1);
INSERT INTO Pessoa(nome, email, ID) VALUES (Srta. Isis Barros, sabrina81@novaes.br, 2);
INSERT INTO Pessoa(nome, email, ID) VALUES (Igor Monteiro, olivia85@hotmail.com, 3);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, https://da.com/);
INSERT INTO Artista(artista_id, artista_site) VALUES (2, https://www.rocha.net/);

--

INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 97874 5272);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 98602 6920);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 91351 4914);
INSERT INTO Telefone(artista_id, telefone) VALUES (3, +55 91769 9786);

--

INSERT INTO Usuario(usuario_id, idade) VALUES (3, 74);

--

INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (1, Occaecati repudiandae itaque inventore unde labore., 630);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (2, Error aut nam asperiores., 1180);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (3, Et maxime quam., 393);

--

INSERT INTO Musica(id_musica, genero) VALUES (4, Rap);
INSERT INTO Musica(id_musica, genero) VALUES (3, Funk);
INSERT INTO Musica(id_musica, genero) VALUES (2, Pop);

--

