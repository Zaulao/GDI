from faker import Faker
fake = Faker()
import random

def genCpf():
    def calcula_digito(digs):
       s = 0
       qtd = len(digs)
       for i in range(qtd):
          s += n[i] * (1+qtd-i)
       res = 11 - s % 11
       if res >= 10: return 0
       return res                                                                              
    n = [random.randrange(10) for i in range(9)]
    n.append(calcula_digito(n))
    n.append(calcula_digito(n))
    return "%d%d%d.%d%d%d.%d%d%d-%d%d" % tuple(n)

def genDate():
    ano = random.randrange(1920, 2019)
    dia = random.randrange(1, 29)
    mes = random.randrange(1, 12)
    return (str(ano) + '-' + str(mes) + '-' + str(dia))

file_name = 'povoamento.sql'
f = open(file_name, 'a+', encoding="utf-8")
fake = Faker('pt_BR')

numberOfUsers = int(input("Quantos usuários?\n"))
numberOfArtists = int(input("Quantos artistas?\n"))
numberOfSongs = int(input("Quantas músicas?\n"))
numberOfAlbums = int(input("Quantos álbuns?\n"))
numberOfPerson = numberOfArtists + numberOfUsers
print(genDate())
print(genCpf())

ID = 1
musica_id = 1
album_id = 1

generos = ["Rock", "Pop", "Rap", "Jazz", "Funk", "Soul"]

f.write('-- RELAÇÕES \n\n')

for i in range(numberOfPerson):
    nome = fake.name()
    email = fake.ascii_email()
    f.write("INSERT INTO Pessoa(nome, email, ID) VALUES (" + nome + ", " + email + ", " + str(ID) + ");\n")
    ID += 1
f.write('\n--\n\n')

ID = 1

for i in range(numberOfArtists):
    artista_site = fake.profile()
    website = artista_site
    website = (website['website'][0])
    f.write("INSERT INTO Artista(artista_id, artista_site) VALUES (" + str(ID) + ', ' + website + ");\n")
    ID += 1

f.write('\n--\n\n')

for i in range(numberOfArtists * 2):
    counter = 0
    fone = fake.cellphone_number()
    iterator = ID
    f.write("INSERT INTO Telefone(artista_id, telefone) VALUES (" + str(iterator) + ', ' + fone + ");\n")
    counter += 1
    if counter == 2:
        iterator -= 1
        counter -= 2

f.write('\n--\n\n')

for i in range(numberOfUsers):
    idade = random.randrange(2, 100)
    f.write("INSERT INTO Usuario(usuario_id, idade) VALUES (" + str(ID) + ", " + str(idade) + ");\n")
    ID += 1

ID = 1

f.write('\n--\n\n')

songs = []

for i in range(numberOfSongs):
    nome = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    duracao_segundos = random.randrange(100, 1800)
    f.write("INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (" + str(musica_id) + ", " + nome + ", " + str(duracao_segundos) + ");\n")
    songs.append({ 'musica_id': musica_id })
    musica_id += 1

f.write('\n--\n\n')

for i in range(numberOfSongs):
    genero = generos[random.randrange(0, len(generos) - 1)]
    f.write("INSERT INTO Musica(id_musica, genero) VALUES (" + str(musica_id) + ", " + genero + ");\n")
    musica_id -= 1

f.write('\n--\n\n')

for i in range(numberOfAlbums):
    nome = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    data = genDate()
    f.write("INSERT INTO Album(album_id, nome, data_lancamento) VALUES (" + str(album_id) + ", " + nome + ", " + data + ");\n"

playlists = []

for i in range(numberOfUsers):
    nome = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    f.write("INSERT INTO Playlist(id_dono, nome) VALUES (" + str(ID) + ", " + nome + ");\n")
    playlists.append({'ID': ID, 'nome': nome})
    ID += 1

for i in range(numberOfUsers):
    nome_playlist = playlists[i].nome
    id_playlist = playlists[i].ID
    id_musica = songs[i].musica_id
    f.write("INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (" + str(musica_id) + ", " + id_playlist + ", " + nome_playlist + ");\n")
    

# CREATE TABLE Album_musica( 
#     id_album INT NOT NULL, 
#     id_musica INT NOT NULL, 
#     CONSTRAINT album_musica_pk PRIMARY KEY (id_album, id_musica), 
#     CONSTRAINT album_musica_id_album_fk FOREIGN KEY (id_album) REFERENCES Album(album_id), 
#     CONSTRAINT album_musica_id_musica_fk FOREIGN KEY (id_musica) REFERENCES Musica(musica_id) 
# )
# ;

# CREATE TABLE Cadastro( 
#     id_album INT NOT NULL, 
#     id_artista INT NOT NULL, 
#     CONSTRAINT cadastro_pk PRIMARY KEY (id_album, id_artista), 
#     CONSTRAINT cadastro_id_album_fk FOREIGN KEY (id_album) REFERENCES Album(album_id), 
#     CONSTRAINT cadastro_id_artista_fk FOREIGN KEY (id_artista) REFERENCES Artista(artista_id) 
# )
# ;

# CREATE TABLE Segue( 
#     id_seguidor INT NOT NULL, 
#     id_seguido INT NOT NULL, 
#     CONSTRAINT segue_pk PRIMARY KEY (id_seguidor, id_seguido), 
#     CONSTRAINT segue_seguidor_fk FOREIGN KEY (id_seguidor) REFERENCES Pessoa(ID), 
#     CONSTRAINT segue_seguido_fk FOREIGN KEY (id_seguido) REFERENCES Pessoa(ID) 
# )
# ;

# CREATE TABLE Reproduz( 
#     id_pessoa INT NOT NULL, 
#     id_musica INT NOT NULL, 
#     id_playlist INT NOT NULL, 
#     nome_playlist VARCHAR2(50) NOT NULL, 
#     momento TIMESTAMP, 
#     CONSTRAINT reproduz_pk PRIMARY KEY (id_pessoa, id_musica, id_playlist, nome_playlist, momento), 
#     CONSTRAINT reproduz_pessoa_fk FOREIGN KEY (id_pessoa) REFERENCES Pessoa(ID), 
#     CONSTRAINT reproduz_musica_fk FOREIGN KEY (id_musica) REFERENCES MUSICA(musica_id), 
#     CONSTRAINT reproduz_playlist_id_fk FOREIGN KEY (id_playlist, nome_playlist) REFERENCES Playlist(id_dono, nome) 
# )