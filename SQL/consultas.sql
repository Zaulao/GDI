UPDATE Usuario SET idade = 32 WHERE usuario_id = 8;

DELETE FROM Segue WHERE id_seguidor = 1 AND id_seguido = 6;

SELECT M.nome, P.nome, momento 
FROM Reproduz
    FULL OUTER JOIN Musica M
        ON Reproduz.id_musica = M.musica_id
    FULL OUTER JOIN Pessoa P
        ON Reproduz.id_pessoa = P.ID
WHERE nome_playlist IN ('Dolores quis suscipit excepturi', 'Beatae cupiditate sapiente omnis quidem molestias atque.')
ORDER BY momento;

SELECT nome FROM Musica WHERE musica_id BETWEEN 5 AND 9;

SELECT id_musica, momento FROM Reproduz WHERE momento LIKE '2013-%';

SELECT nome FROM Pessoa WHERE email IS NULL;

SELECT M.nome, genero 
FROM Musica M
INNER JOIN Genero 
    ON M.musica_id = Genero.id_musica;

SELECT MAX(duracao_segundos) AS Max_duracao, 
MIN(duracao_segundos) AS Min_duracao,
AVG(duracao_segundos) AS Med_duracao, Count(*) AS Qtd_musica FROM Musica;

SELECT Count(*) QTD, genero FROM Genero GROUP BY genero HAVING COUNT(*) > 3;

SELECT ID FROM Pessoa
INTERSECT
SELECT musica_id FROM Musica;