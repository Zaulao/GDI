CREATE SEQUENCE ID INCREMENT BY 1 START WITH 1
;

CREATE SEQUENCE musica_id INCREMENT BY 1 START WITH 1
;

CREATE SEQUENCE album_id INCREMENT BY 1 START WITH 1
;

CREATE TABLE Pessoa( 
    nome VARCHAR2(255) NOT NULL, 
    email VARCHAR2(255), 
    ID INT NOT NULL, 
    CONSTRAINT pessoa_pk PRIMARY KEY (ID)  
)
;

CREATE TABLE Artista( 
    artista_id INT NOT NULL, 
    artista_site VARCHAR2(255), 
    CONSTRAINT artista_pk PRIMARY KEY (artista_id), 
    CONSTRAINT artista_fk FOREIGN KEY (artista_id) REFERENCES Pessoa (ID) 
)
;

CREATE TABLE Telefone( 
    artista_id INT NOT NULL,  
    telefone VARCHAR2(255) NOT NULL, 
    CONSTRAINT telefone_pk PRIMARY KEY (artista_id, telefone), 
    CONSTRAINT telefone_fk FOREIGN KEY (artista_id) REFERENCES Artista(artista_id) 
)
;

CREATE TABLE Usuario( 
    usuario_id INT NOT NULL, 
    idade INT NOT NULL, 
    CONSTRAINT usuario_pk PRIMARY KEY (usuario_id), 
    CONSTRAINT usuario_fk FOREIGN KEY (usuario_id) REFERENCES Pessoa (ID), 
    CONSTRAINT idade_minima CHECK (idade > 0) 
)
;

CREATE TABLE Musica( 
    musica_id INT NOT NULL, 
    nome VARCHAR2(255), 
    CONSTRAINT musica_pk PRIMARY KEY (musica_id) 
)
;

ALTER TABLE Musica ADD duracao_segundos INT NOT NULL
;

CREATE TABLE Genero( 
    id_musica INT NOT NULL, 
    genero VARCHAR2(255) NOT NULL, 
    CONSTRAINT genero_pk PRIMARY KEY (id_musica, genero), 
    CONSTRAINT genero_fk FOREIGN KEY (id_musica) REFERENCES Musica(musica_id) 
)
;

CREATE TABLE Album ( 
    album_id INT NOT NULL, 
    nome VARCHAR2(255), 
    data_lancamento VARCHAR2(30) NOT NULL, 
    CONSTRAINT album_pk PRIMARY KEY (album_id) 
)
;

CREATE TABLE Playlist( 
    id_dono INT NOT NULL, 
    nome VARCHAR2(255) NOT NULL, 
    CONSTRAINT playlist_pk PRIMARY KEY (id_dono, nome), 
    CONSTRAINT playlist_fk FOREIGN KEY (id_dono) REFERENCES Usuario(usuario_id) 
)
;

CREATE TABLE Musica_playlist( 
    id_musica INT NOT NULL, 
    id_playlist INT NOT NULL, 
    nome_playlist VARCHAR(255) NOT NULL, 
    CONSTRAINT musica_playlist_pk PRIMARY KEY (id_musica, id_playlist, nome_playlist), 
    CONSTRAINT musica_playlist_id_musica_fk FOREIGN KEY (id_musica) REFERENCES Musica(musica_id), 
    CONSTRAINT musica_playlist_id_playlist_fk FOREIGN KEY (id_playlist, nome_playlist) REFERENCES Playlist (id_dono, nome) 
)
;

CREATE TABLE Album_musica( 
    id_album INT NOT NULL, 
    id_musica INT NOT NULL, 
    CONSTRAINT album_musica_pk PRIMARY KEY (id_album, id_musica), 
    CONSTRAINT album_musica_id_album_fk FOREIGN KEY (id_album) REFERENCES Album(album_id), 
    CONSTRAINT album_musica_id_musica_fk FOREIGN KEY (id_musica) REFERENCES Musica(musica_id) 
)
;

CREATE TABLE Cadastro( 
    id_album INT NOT NULL, 
    id_artista INT NOT NULL, 
    CONSTRAINT cadastro_pk PRIMARY KEY (id_album, id_artista), 
    CONSTRAINT cadastro_id_album_fk FOREIGN KEY (id_album) REFERENCES Album(album_id), 
    CONSTRAINT cadastro_id_artista_fk FOREIGN KEY (id_artista) REFERENCES Artista(artista_id) 
)
;

CREATE TABLE Segue( 
    id_seguidor INT NOT NULL, 
    id_seguido INT NOT NULL, 
    CONSTRAINT segue_pk PRIMARY KEY (id_seguidor, id_seguido), 
    CONSTRAINT segue_seguidor_fk FOREIGN KEY (id_seguidor) REFERENCES Pessoa(ID), 
    CONSTRAINT segue_seguido_fk FOREIGN KEY (id_seguido) REFERENCES Pessoa(ID) 
)
;

CREATE TABLE Reproduz( 
    id_pessoa INT NOT NULL, 
    id_musica INT NOT NULL, 
    id_playlist INT NOT NULL, 
    nome_playlist VARCHAR2(255) NOT NULL, 
    momento VARCHAR2(30), 
    CONSTRAINT reproduz_pk PRIMARY KEY (id_pessoa, id_musica, id_playlist, nome_playlist, momento), 
    CONSTRAINT reproduz_pessoa_fk FOREIGN KEY (id_pessoa) REFERENCES Pessoa(ID), 
    CONSTRAINT reproduz_musica_fk FOREIGN KEY (id_musica) REFERENCES MUSICA(musica_id), 
    CONSTRAINT reproduz_playlist_id_fk FOREIGN KEY (id_playlist, nome_playlist) REFERENCES Playlist(id_dono, nome) 
)
;

CREATE INDEX index_name ON Musica (nome) 
 
;
