CREATE OR REPLACE PACKAGE BODY idade_package AS 
   PROCEDURE incrementa_idade();
   BEGIN
      CURSOR cursor_usuario IS SELECT * FROM Usuario
      user_id Usuario.usuario_id%type;
      user_age Usuario.idade%type;
      BEGIN
        OPEN cursor_usuario;
        LOOP
        FETCH cursor_usuario INTO user_id, user_age;
        EXIT WHEN cursor_usuario%NOTFOUND;
        UPDATE Usuario SET idade = user_age + 1 WHERE usuario_id = user_id;
        END LOOP;
      END;
   END incrementa_idade; 
END idade_package; 
/