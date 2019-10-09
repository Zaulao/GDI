CREATE OR REPLACE PACKAGE idade_package AS
    PROCEDURE incrementa_idade;
END idade_package; 
/

CREATE OR REPLACE PACKAGE BODY idade_package AS
   PROCEDURE incrementa_idade IS
   CURSOR cursor_usuario IS SELECT * FROM Usuario;
   BEGIN
        FOR cur IN cursor_usuario
        LOOP
        UPDATE Usuario SET idade = cur.idade + 1 WHERE usuario_id = cur.usuario_id;
        END LOOP;
   END;
END idade_package; 
/