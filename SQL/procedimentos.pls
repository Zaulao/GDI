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

-- CRIAÇAO DE TABLE COM QUANTIDADE DE MÚSICAS DE GENERO JAZZ E ROCK

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

-- CRIAÇAO DE FUNCAO QUE RETORNA MEDIA DA DURACAO DAS MUSICAS

CREATE OR REPLACE FUNCTION media_duracao_musicas
    RETURN NUMBER IS media NUMBER;
BEGIN
    SELECT AVG(duracao_segundos) into media
    FROM Musica;
    RETURN media;
END;
/

-- CONSULTA DA MEDIA DE DURACAO DAS MUSICAS

DECLARE
    media NUMBER;
BEGIN
    media := media_duracao_musicas;
    dbms_output.put_line(media);
END;
/

CREATE OR REPLACE PROCEDURE pessoasComIdade(
    target_idade Usuario.idade%type,
    counter OUT Number
) IS
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
   dbms_output.put_line('Usuários com idade ' || target_idade || ': ' || counter);
   CLOSE c_usuario;
END;
DECLARE
    counter Number;
BEGIN
    pessoasComIdade(7, counter);
END;


CREATE OR REPLACE PROCEDURE pessoasComRangeIdade(
   menor_idade IN Usuario.idade%type,
   maior_idade IN Usuario.idade%type,
   total OUT Number
) IS
    aux Number;
BEGIN
   total := 0;
   FOR i IN menor_idade .. maior_idade-1
   LOOP
      aux := 0;
      pessoasComIdade(i, aux);
      total := total + aux;
   END LOOP;
   dbms_output.put_line('Usuários com idade entre ' || menor_idade || ' e ' || maior_idade || ': ' || total);
END;
DECLARE
    menor_idade Number;
    maior_idade Number;
    res Number;
BEGIN
    menor_idade := 0;
    maior_idade := 10;
    pessoasComRangeIdade(menor_idade, maior_idade, res);
END;

