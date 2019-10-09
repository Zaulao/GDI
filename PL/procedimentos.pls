-- BUSCA POR MÚSICA POR NOME

DECLARE 
   musica_rec Musica%rowtype; 
BEGIN 
   SELECT * into musica_rec 
   FROM Musica 
   WHERE nome = 'Mollitia consequatur enim placeat culpa.';  
   dbms_output.put_line('Musica ID: ' || musica_rec.musica_id); 
   dbms_output.put_line('Musica Nome: ' || musica_rec.nome); 
   dbms_output.put_line('Musica Duraçao: ' || musica_rec.duracao_segundos);
END; 
/

-- CRIAÇAO DE TABELA COM QUANTIDADE DE MÚSICAS DE GENERO JAZZ E ROCK

DECLARE 
   TYPE musicas_genero IS TABLE OF NUMBER INDEX BY VARCHAR2(20); 
   musicas_genero_lista musicas_genero; 
   quantidade NUMBER; 
   nomeGenero VARCHAR2(50);
BEGIN 
    SELECT COUNT(*) into quantidade 
    FROM Genero 
    WHERE genero = 'Jazz';
    musicas_genero_lista('Jazz') := quantidade;
   
    SELECT COUNT(*) into quantidade 
    FROM Genero 
    WHERE genero = 'Rock';
    musicas_genero_lista('Rock') := quantidade;
    
    -- printing the table 
   nomeGenero := musicas_genero_lista.FIRST; 
   WHILE nomeGenero IS NOT null LOOP 
      CASE nomeGenero
      when 'Jazz' then dbms_output.put_line('Existem ' || musicas_genero_lista(nomeGenero) || ' músicas de Jazz');
      when 'Rock' then dbms_output.put_line('Existem ' || musicas_genero_lista(nomeGenero) || ' músicas de Rock');
      END CASE;
      nomeGenero := musicas_genero_lista.NEXT(nomeGenero); 
   END LOOP; 
END; 
/

CREATE OR REPLACE FUNCTION media_duracao_musicas
  RETURN NUMBER;
 IS 
  n NUMBER; 
BEGIN 
SELECT AVG(duracao_segundos) INTO n
FROM Musica;
RETURN n;
END;
/

CREATE OR REPLACE PROCEDURE duracaoAlbum(
   in_album_id IN Album.album_id%type,
   v_musica_duracao_segundos OUT Musica.duracao_segundos%type
) IS
   CURSOR cursor_album IS
      SELECT * from Album A WHERE (a.album_id = in_album_id);
   v_id Album.album_id%type;
   v_nome Album.nome%type;
   v_data_lancamento Album.data_lancamento%type;
   v_musica_id Musica.musica_id%type;
   v_musica_nome Musica.nome%type;
   CURSOR c_musica IS
      SELECT SUM(M.duracao_segundos) from Musica M, Album_Musica AM WHERE (M.musica_id = AM.id_musica AND AM.id_album = in_album_id );
   BEGIN
      OPEN cursor_album;
      OPEN c_musica;
      LOOP
         FETCH cursor_album INTO v_id, v_nome, v_data_lancamento;
         EXIT WHEN cursor_album%NOTFOUND;
         dbms_output.put_line('Nome do album: ' || v_nome);
      END LOOP;
        LOOP
         FETCH c_musica INTO v_musica_duracao_segundos;
         EXIT WHEN c_musica%NOTFOUND;
         dbms_output.put_line('Duração: ' || v_musica_duracao_segundos);
      END LOOP;
      CLOSE cursor_album;
      CLOSE c_musica;
   END;

DECLARE
   v_duracao Number;
BEGIN
   duracaoAlbum(3, v_duracao);
   dbms_output.put_line(v_duracao);
END;
/


CREATE OR REPLACE PROCEDURE pessoasComIdade(
    target_idade Usuario.idade%type
) IS
   counter Number;
   v_id Usuario.usuario_id%type;
   v_idade Usuario.idade%type;
   
   CURSOR c_usuario IS
      SELECT * FROM Usuario;
BEGIN
   counter := 0;
   OPEN c_usuario;
   LOOP
      EXIT WHEN c_usuario%NOTFOUND;
      FETCH c_usuario INTO v_id, v_idade;
      IF v_idade = target_idade THEN
        counter := counter + 1;
      END IF;
   END LOOP;
   dbms_output.put_line('Há' || counter || ' usuarios com a idade ' || target_idade);
   CLOSE c_usuario;
END;
EXCEPTION
  WHEN no_data_found THEN
   dbms_output.put_line('Não há usuarios com a idade ' || target_idade);
    ;
EXEC pessoasComIdade(7);

-- TRIGGER COMANDO

CREATE OR REPLACE TRIGGER Delete_Pessoa
BEFORE DELETE ON Pessoa
DECLARE
    ID NUMBER;
BEGIN
    SELECT COUNT(*) INTO ID 
    FROM Pessoa;
    IF  ID = 0 THEN    
        RAISE_APPLICATION_ERROR(-21000, 'Não se pode excluir uma Pessoa unica');
    END IF;
END Delete_Pessoa;
/

-- TRIGGER LINHA

CREATE OR REPLACE TRIGGER Insert_Musica
BEFORE INSERT ON Musica
FOR EACH ROW
BEGIN
IF :NEW.duracao_segundos < 0 THEN
    RAISE_APPLICATION_ERROR(-20101, 'Duracao da musica não pode ser menor que 0');
END IF;
END;
/
