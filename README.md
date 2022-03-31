# WELCOME API SERVICE

#### Objetivo do projeto: 
Solucionar problema de troca de mensagens internas entre colaboradores autenficados.

### Tecnologias:

[X] Rails 

[X] Dockerfile

[X] Docker-compose

[X] Postgres

### Como iniciar o projeto:

Crie um arquivo .env e inclua suas variaveis de ambiente.

Crie uma imagem para Ruby on Rails com o comando:

`docker-compose build`

Inicie o projeto executando:

`docker-compose up`

Crie o banco de dados executando:

`docker-compose exec web rails db:create db:migrate`

Nice! 

Agora seu aplicativo Rails deve estar disponível em localhost:3000.