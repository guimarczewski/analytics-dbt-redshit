-- criação user e password
CREATE USER guimarczewski WITH PASSWORD 'senha_do_usuario';

-- criação do db dev
CREATE DATABASE dev;

-- definição de privilégios para o novo user
GRANT ALL PRIVILEGES ON DATABASE dev TO guimarczewski;

-- conectar no db dev
\c dev