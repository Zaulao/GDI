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

