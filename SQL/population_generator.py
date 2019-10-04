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

def genTimestamp():
    ano = random.randrange(1920, 2019)
    dia = random.randrange(1, 29)
    mes = random.randrange(1, 12)
    hora = random.randrange(1, 12)
    minuto = random.randrange(1, 59)
    segundo = random.randrange(1, 59)
    return (str(ano) + '-' + str(mes) + '-' + str(dia) + ' ' + str(hora) + ':' + str(minuto) + ':' + str(segundo))

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
    f.write("INSERT INTO Pessoa(nome, email, ID) VALUES ('" + nome + "', '" + email + "', " + str(ID) + ");\n")
    ID += 1
f.write('\n--\n\n')

ID = 1

for i in range(numberOfArtists):
    artista_site = fake.profile()
    website = artista_site
    website = (website['website'][0])
    f.write("INSERT INTO Artista(artista_id, artista_site) VALUES (" + str(ID) + ", '" + website + "');\n")
    ID += 1

f.write('\n--\n\n')

iterator = 1

for i in range(numberOfArtists):
    counter = 0
    fone = fake.cellphone_number()
    f.write("INSERT INTO Telefone(artista_id, telefone) VALUES (" + str(iterator) + ", '" + fone + "');\n")
    iterator += 1

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
    f.write("INSERT INTO Musica(musica_id, nome, duracao_segundos) VALUES (" + str(musica_id) + ", '" + nome + "', " + str(duracao_segundos) + ");\n")
    songs.append({ 'musica_id': musica_id })
    musica_id += 1

f.write('\n--\n\n')

musica_id = 1

for i in range(numberOfSongs):
    genero = generos[random.randrange(0, len(generos) - 1)]
    f.write("INSERT INTO Genero(id_musica, genero) VALUES (" + str(musica_id) + ", '" + genero + "');\n")
    musica_id += 1

f.write('\n--\n\n')

albums = []

for i in range(numberOfAlbums):
    nome = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    data = genDate()
    f.write("INSERT INTO Album(album_id, nome, data_lancamento) VALUES (" + str(album_id) + ", '" + nome + "', '" + data + "');\n")
    albums.append({'album_id': album_id, 'nome': nome, 'data_lancamento': data})
    album_id += 1

f.write('\n--\n\n')

playlists = []

ID = numberOfArtists + 1

for i in range(numberOfUsers):
    nome = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    f.write("INSERT INTO Playlist(id_dono, nome) VALUES (" + str(ID) + ", '" + nome + "');\n")
    playlists.append({'ID': ID, 'nome': nome})
    ID += 1

f.write('\n--\n\n')

for i in range(numberOfUsers):
    nome_playlist = playlists[i]['nome']
    id_playlist = playlists[i]['ID']
    id_musica = songs[i]['musica_id']
    f.write("INSERT INTO Musica_playlist(id_musica, id_playlist, nome_playlist) VALUES (" + str(id_musica) + ", " + str(id_playlist) + ", '" + nome_playlist + "');\n")

f.write('\n--\n\n')
    
for i in range(numberOfAlbums):
    countSongs = 1
    countAlbums = 1
    k = countSongs // countAlbums
    while countSongs < numberOfSongs:
        f.write("INSERT INTO Album_musica(id_album, id_musica) VALUES (" + str(albums[countAlbums]['album_id']) + ", " + str(songs[countSongs]['musica_id']) + ");\n")
        countSongs += 1
        if (countAlbums == k):
            countAlbums += 1

f.write('\n--\n\n')



for i in range(1, numberOfAlbums + 1):
    f.write("INSERT INTO Cadastro(id_album, id_artista) VALUE (" + str(i) + ", " + str(random.randrange(1, numberOfArtists)) + ");\n")

f.write('\n--\n\n')

for i in range(5):
    f.write("INSERT INTO Segue(id_seguidor, id_seguido) VALUE (" + str(random.randrange(1, numberOfUsers)) + ", " + str(random.randrange(1, numberOfUsers)) + ");\n")

f.write('\n--\n\n')

for i in range(10):
    indexOfRandomPlaylist = random.randrange(1, numberOfUsers)
    f.write("INSERT INTO Reproduz(id_pessoa, id_musica, id_playlist, nome_playlist, momento) VALUE (" + str(random.randrange(1, numberOfUsers)) + ", " + str(random.randrange(1, numberOfSongs)) + ", " + str(playlists[indexOfRandomPlaylist]['ID']) + ", '" + str(playlists[indexOfRandomPlaylist]['nome']) + "', '" + genTimestamp() + "');\n")


f.close()