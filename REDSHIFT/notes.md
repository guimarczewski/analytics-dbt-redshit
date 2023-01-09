guimarczewsk1
redshift-edz-cluster1
database: dev
port: 5439
awsuser

Após criar o cluster, vai em settings e VPC security group, para liberar o acesso com o meu ip - editar regras de entrada - minha máquina para 5439 port, do redshift.
Para descobrir o IP da minha distr linux: hostname -I
172.17.0.1

Após isso abre o cluster - actions - turn on publicly accessible