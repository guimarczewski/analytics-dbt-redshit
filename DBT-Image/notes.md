FROM ubuntu:20.04 -- instalar imagem do ubuntu versão 20.04
RUN apt-get update && apt-get install -y git && apt-get install -y python3.8 -- get and update do git e python
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip setuptools -- pacote de várias libs
RUN pip3 install dbt-postgres dbt-redshift -- instala o dbt com suporte para postgres e redshift
WORKDIR /dbt

----

Após isso basta rodar o comando abaixo, ponto no final é porque o arquivo está no diretório atual:
docker build --tag my-dbt-redshift .

Para startar o container e setar o diretório "usr/app" da imagem do container em "DBT-Image/dbt", volume para conectar minha máquina com o container:
docker run -it --network=host --mount 'type=bind,source=/workspace/analytics-dbt-redshit/DBT-Image/dbt,destination=/usr/app' my-dbt-redshift

Ao rodar o comando anterior, já iniciou e está dentro do container. Para verificar a versão do DBT e seus plugins:
dbt --version
