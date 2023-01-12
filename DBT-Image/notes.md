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

acessar a pasta compartilhada
cd /usr/app/

iniciar projeto analytics_dbt, seleciona o adaptador redshift e input dos dados de acesso do db
dbt init <nome_projeto> 

Após isso está salvo dentro do diretório com nome do projeto

apt-get install vim - para abrir os arquivos
vi <arquivo>

Profile analytics_dbt written to /root/.dbt/profiles.yml using target's profile_template.yml and your supplied values. Run 'dbt debug' to validate the connection dentro da pasta de projeto

caso esteja em uma máquina local, para conectar o repo no github:
dentro da pasta de projeto rodar o comando "git clone <link_repo>.git"
agora esse novo diretório está sendo versionado, basta mover todos os diretórios do projeto para ele
git config --global user.email "email"
git config --global user.name "your name"
git commit -m "first commit"
git push

diretório seeds para colocar arquivos csv uteis