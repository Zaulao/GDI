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
      dbms_output.put_line 
      ('O genero ' || nomeGenero || ' possui ' || TO_CHAR(musicas_genero_lista(nomeGenero)) || ' músicas'); 
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
