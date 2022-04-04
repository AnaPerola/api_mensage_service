# WELCOME API SERVICE

### 🎯 Objetivo do projeto: 

Criar um chat em real time para solucionar o problema de troca de mensagens internas entre colaboradores registrados.

#

### 💻 Tecnologias:

[X] Rails 

[X] Dockerfile

[X] Docker-compose

[X] Postgres

#

### ✨ Gems de destaque do projeto:

[X] JWT - Para construir o sistema de autentificação para usuários

[X] Cancancan - Para construir o sistema de autorização para usuários

[X] Rspec-rails - Para construir o sistema de testes

#

### 💬 O Chat em tempo real 

Chat criado em real time usando Action Cable (WebSockets).
- Foi criado um canal para a troca de mensagens `chat_messages_channel.rb`
- Foi criado um model `Message` para as mensagens.
- Foi criado uma rota para a troca de mensagens.
- Configurado url de action cable em `env=development`
- Criado dados Fictícios no rails console para realizar o testes.

#

### 🏁 Como iniciar o projeto:

Crie um arquivo `.env` e inclua suas variaveis de ambiente.

Crie uma imagem para Ruby on Rails com o comando:

`docker-compose build`

Inicie o projeto executando:

`docker-compose up`

Crie o banco de dados executando:

`docker-compose exec web rails db:create db:migrate`

😁 Nice! 🚀 

Agora seu aplicativo Rails deve estar disponível em `http://localhost:3000`.

#

### 📕 Documentação de refêrencia:

- https://api.rubyonrails.org/
- https://github.com/rspec/rspec-rails
- https://github.com/faker-ruby/faker
- https://github.com/thoughtbot/factory_bot
- https://github.com/jwt/ruby-jwt
- https://github.com/CanCanCommunity/cancancan 
- https://guides.rubyonrails.org/action_cable_overview.html#connection-setup