FROM ruby:3.0.3

#Atualizando servidor e instalando pacotes necessarios
RUN apt-get update -qq \
    && apt-get install -y curl build-essential apt-transport-https libpq-dev locales wget \
    && apt-get clean

#Diretorio onde irei trabalhar
WORKDIR /www/api_service

#Copiando aplicacao local para dentro do container
COPY Gemfile /www/api_service/Gemfile
COPY Gemfile.lock /www/api_service/Gemfile.lock
COPY . /www/api_service/

RUN bundle install

EXPOSE 3000

#Configurando o processo principal para executar o projeto
CMD ["rails", "server", "-b", "0.0.0.0"]
