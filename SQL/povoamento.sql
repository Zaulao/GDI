-- INSERT INTO Pessoa VALUES ('Luan', 'lab7@cin.ufpe.br', ID.NEXTVAL)
-- INSERT INTO Pessoa VALUES ('Vitor', 'vlma@cin.ufpe.br', ID.NEXTVAL)
-- INSERT INTO Pessoa VALUES ('Luan', 'lab7@cin.ufpe.br', ID.NEXTVAL)
-- INSERT INTO Pessoa VALUES ('Lucio', 'lfmm2@cin.ufpe.br', ID.NEXTVAL)
-- INSERT INTO Pessoa VALUES ('Eden', 'eeas@cin.ufpe.br', ID.NEXTVAL)
-- INSERT INTO Pessoa VALUES ('Saulo', 'sfgl@cin.ufpe.br', ID.NEXTVAL)

-- UPDATE Pessoa SET nome = 'mary jane', email = 'mj@cin.ufpe.br' WHERE ID = 3

-- SELECT * FROM Pessoa order by nome

-- INSERT INTO Usuario VALUES (1, 21)
-- INSERT INTO Usuario VALUES (2, 17)
-- INSERT INTO Usuario VALUES (3, 6560)
-- INSERT INTO Usuario VALUES (4, 2045)

-- SELECT * FROM Usuario order by usuario_id

-- INSERT INTO Artista VALUES (4, 'roque-do-lucio.com');
-- INSERT INTO Artista VALUES (5, 'brega-do-eden.com');
-- INSERT INTO Artista VALUES (6, 'classico-do-zaulao.com');

-- SELECT * FROM Artista order by artista_id;

-- INSERT INTO Telefone VALUES (4, 666)
-- INSERT INTO Telefone VALUES (4, 777)
-- INSERT INTO Telefone VALUES (5, 696969)
-- INSERT INTO Telefone VALUES (6, 300)

-- SELECT * FROM Telefone;

-- SELECT A.artista_id, P.nome, T.telefone FROM Pessoa P, Artista A, Telefone T WHERE A.artista_id = T.artista_id AND A.artista_id = P.id

-- SELECT * FROM Musica

-- INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Breguinha Gostoso', 3000)
-- INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Rock Pesado', 3000)
-- INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Classico longo', 8000)
-- INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'jazz suave', 3232)
-- INSERT INTO Musica VALUES (musica_id.NEXTVAL, 'Gospel Satânico', 666)

-- INSERT INTO Musica(musica_id, duracao_segundos) VALUES (musica_id.NEXTVAL, 2000)

-- SELECT * FROM MUSICA WHERE duracao_segundos BETWEEN 300 AND 3000

-- DELETE FROM Musica WHERE nome IS NULL

-- SELECT * FROM MUSICA WHERE duracao_segundos BETWEEN 300 AND 3000

-- RELAÇÕES 

INSERT INTO Pessoa(nome, email, ID) VALUES ('Davi Rocha', 'imoraes@nunes.br', 1);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Bernardo Campos', 'emanuelcorreia@hotmail.com', 2);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Sophie da Paz', 'tsilva@oliveira.br', 3);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Dr. Danilo Nascimento', 'sfarias@gomes.br', 4);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Lívia Costa', 'costatheo@rezende.br', 5);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Rafaela Oliveira', 'ksales@uol.com.br', 6);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Heitor Almeida', 'brunoviana@bol.com.br', 7);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Luiz Gustavo da Rosa', 'marianeda-rocha@costela.com', 8);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Pedro Lucas Fernandes', 'caueda-luz@vieira.org', 9);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Luigi Rocha', 'nicole36@ferreira.com', 10);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Davi Luiz Lima', 'kevin28@costela.com', 11);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Samuel Ribeiro', 'oliveiraaugusto@uol.com.br', 12);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Juan Pinto', 'ycosta@melo.br', 13);
INSERT INTO Pessoa(nome, email, ID) VALUES ('Vitor Cunha', 'caroline68@da.br', 14);

--

INSERT INTO Artista(artista_id, artista_site) VALUES (1, 'http://www.araujo.org/');
INSERT INTO Artista(artista_id, artista_site) VALUES (2, 'https://oliveira.org/');
INSERT INTO Artista(artista_id, artista_site) VALUES (3, 'https://www.silva.org/');
INSERT INTO Artista(artista_id, artista_site) VALUES (4, 'https://www.cunha.br/');

--

INSERT INTO Telefone(artista_id, telefone) VALUES (1, '+55 96105 1530');
INSERT INTO Telefone(artista_id, telefone) VALUES (2, '+55 93763 3852');
INSERT INTO Telefone(artista_id, telefone) VALUES (3, '+55 97948 5516');
INSERT INTO Telefone(artista_id, telefone) VALUES (4, '+55 90547 9346');

--

INSERT INTO Usuario(usuario_id, idade) VALUES (5, 13);
INSERT INTO Usuario(usuario_id, idade) VALUES (6, 96);
INSERT INTO Usuario(usuario_id, idade) VALUES (7, 7);
INSERT INTO Usuario(usuario_id, idade) VALUES (8, 23);
INSERT INTO Usuario(usuario_id, idade) VALUES (9, 47);
INSERT INTO Usuario(usuario_id, idade) VALUES (10, 34);
INSERT INTO Usuario(usuario_id, idade) VALUES (11, 63);
INSERT INTO Usuario(usuario_id, idade) VALUES (12, 5);
INSERT INTO Usuario(usuario_id, idade) VALUES (13, 71);
INSERT INTO Usuario(usuario_id, idade) VALUES (14, 32);

--

INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (1, 'Mollitia consequatur enim placeat culpa.', 870);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (2, 'Sunt maxime est fuga eaque voluptatibus.', 113);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (3, 'Doloribus iusto ut ipsam.', 262);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (4, 'Corrupti in placeat iusto atque maiores.', 988);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (5, 'Velit reprehenderit rem sunt autem.', 592);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (6, 'Aspernatur hic similique quasi ipsa.', 1199);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (7, 'Placeat minus numquam corrupti consequuntur praesentium.', 1347);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (8, 'Consectetur possimus nostrum laudantium commodi fugiat.', 179);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (9, 'Qui ut officiis deleniti nesciunt iure qui officiis.', 1263);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (10, 'Ut sint pariatur laudantium ad.', 1269);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (11, 'Illum qui repellendus.', 352);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (12, 'Perferendis iste omnis possimus eum voluptas blanditiis.', 955);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (13, 'Reprehenderit cumque cupiditate libero incidunt quos voluptates.', 1709);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (14, 'Doloremque sint sit reprehenderit delectus eligendi labore expedita.', 1221);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (15, 'Distinctio voluptates ullam tenetur.', 423);
INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (16, '', 600);

--

INSERT INTO Genero(id_musica, genero) VALUES (1, 'Rock');
INSERT INTO Genero(id_musica, genero) VALUES (2, 'Jazz');
INSERT INTO Genero(id_musica, genero) VALUES (3, 'Rap');
INSERT INTO Genero(id_musica, genero) VALUES (4, 'Rock');
INSERT INTO Genero(id_musica, genero) VALUES (5, 'Rap');
INSERT INTO Genero(id_musica, genero) VALUES (6, 'Rap');
INSERT INTO Genero(id_musica, genero) VALUES (7, 'Pop');
INSERT INTO Genero(id_musica, genero) VALUES (8, 'Funk');
INSERT INTO Genero(id_musica, genero) VALUES (9, 'Rock');
INSERT INTO Genero(id_musica, genero) VALUES (10, 'Rap');
INSERT INTO Genero(id_musica, genero) VALUES (11, 'Funk');
INSERT INTO Genero(id_musica, genero) VALUES (12, 'Jazz');
INSERT INTO Genero(id_musica, genero) VALUES (13, 'Pop');
INSERT INTO Genero(id_musica, genero) VALUES (14, 'Rock');
INSERT INTO Genero(id_musica, genero) VALUES (15, 'Pop');

--

INSERT INTO Album(album_id, nome, data_lancamento) VALUES (1, 'Labore sequi laborum facere repellat.', '1970-7-9');
INSERT INTO Album(album_id, nome, data_lancamento) VALUES (2, 'Eveniet molestiae sed fugiat aspernatur.', '2007-4-8');
INSERT INTO Album(album_id, nome, data_lancamento) VALUES (3, 'Sunt illum dignissimos amet ab.', '1926-6-14');

--

INSERT INTO Playlist(id_dono, nome) VALUES (5, 'Ad saepe tempore sunt rerum.');
INSERT INTO Playlist(id_dono, nome) VALUES (6, 'Quisquam itaque iusto impedit molestias voluptatum saepe voluptatibus.');
INSERT INTO Playlist(id_dono, nome) VALUES (7, 'Nesciunt distinctio id quo in.');
INSERT INTO Playlist(id_dono, nome) VALUES (8, 'Delectus saepe ratione eum itaque saepe.');
INSERT INTO Playlist(id_dono, nome) VALUES (9, 'Dolores quis suscipit excepturi.');
INSERT INTO Playlist(id_dono, nome) VALUES (10, 'Aperiam soluta similique harum aperiam.');
INSERT INTO Playlist(id_dono, nome) VALUES (11, 'Beatae cupiditate sapiente omnis quidem molestias atque.');
INSERT INTO Playlist(id_dono, nome) VALUES (12, 'Illo in soluta tempore reprehenderit vero quo.');
INSERT INTO Playlist(id_dono, nome) VALUES (13, 'Corrupti voluptatem nisi rerum officiis est.');
INSERT INTO Playlist(id_dono, nome) VALUES (14, 'Incidunt sapiente iusto quos.');

--

INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (1, 5, 'Ad saepe tempore sunt rerum.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (2, 6, 'Quisquam itaque iusto impedit molestias voluptatum saepe voluptatibus.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (3, 7, 'Nesciunt distinctio id quo in.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (4, 8, 'Delectus saepe ratione eum itaque saepe.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (5, 9, 'Dolores quis suscipit excepturi.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (6, 10, 'Aperiam soluta similique harum aperiam.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (7, 11, 'Beatae cupiditate sapiente omnis quidem molestias atque.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (8, 12, 'Illo in soluta tempore reprehenderit vero quo.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (9, 13, 'Corrupti voluptatem nisi rerum officiis est.');
INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (10, 14, 'Incidunt sapiente iusto quos.');

--

INSERT INTO Album_musica(id_album, id_musica) VALUES (2, 2);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 3);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 4);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 5);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 6);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 7);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 8);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 9);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 10);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 11);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 12);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 13);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 14);
INSERT INTO Album_musica(id_album, id_musica) VALUES (3, 15);

--

INSERT INTO Cadastro(id_album, id_artista) VALUES (1, 2);
INSERT INTO Cadastro(id_album, id_artista) VALUES (2, 2);
INSERT INTO Cadastro(id_album, id_artista) VALUES (3, 2);

--

INSERT INTO Segue(id_seguidor, id_seguido) VALUES (4, 2);
INSERT INTO Segue(id_seguidor, id_seguido) VALUES (3, 8);
INSERT INTO Segue(id_seguidor, id_seguido) VALUES (4, 7);
INSERT INTO Segue(id_seguidor, id_seguido) VALUES (1, 6);
INSERT INTO Segue(id_seguidor, id_seguido) VALUES (8, 2);

--

INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (1, 12, 9, 'Dolores quis suscipit excepturi.', '1976-10-26 10:38:44');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (1, 11, 10, 'Aperiam soluta similique harum aperiam.', '2013-10-9 3:55:25');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (1, 1, 9, 'Dolores quis suscipit excepturi.', '1942-9-13 3:35:48');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (4, 1, 9, 'Dolores quis suscipit excepturi.', '2013-11-4 10:34:41');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (2, 12, 10, 'Aperiam soluta similique harum aperiam.', '1966-6-19 11:48:35');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (2, 1, 8, 'Delectus saepe ratione eum itaque saepe.', '1944-3-17 11:56:18');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (5, 4, 9, 'Dolores quis suscipit excepturi.', '1978-9-5 8:4:46');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (7, 1, 9, 'Dolores quis suscipit excepturi.', '1971-1-20 11:42:44');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (6, 10, 11, 'Beatae cupiditate sapiente omnis quidem molestias atque.', '2010-3-11 6:52:28');
INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUES (6, 4, 7, 'Nesciunt distinctio id quo in.', '1948-2-22 8:53:52');
