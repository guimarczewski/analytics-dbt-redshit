# Criação de um database postgres

- Criação do docker container - https://geshan.com.np/blog/2021/12/docker-postgres/
    - docker run --name basic-postgres --rm -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=4y7sV96vA9wv46VR -e PGDATA=/var/lib/postgresql/data/pgdata -v /tmp:/var/lib/postgresql/data -p 5432:5432 -it postgres:14.1-alpine
    - docker exec -it basic-postgres /bin/sh
    - \l (exibir a lista de databases)
    - CREATE USER guimarczewski WITH PASSWORD 'senha_do_usuario'; (criação do user)
    - CREATE DATABASE nome_da_database;
    - GRANT ALL PRIVILEGES ON DATABASE nome_da_database TO nome_do_usuario;
    - \c dev (conectar no db)