#!/bin/bash

echo "Vamos atualizar o servidor! Aguarde..."

# Os comandos atualizam os pacotes do sistema
apt-get update
apt-get upgrade -y

echo "Instalando o apache."

# Os comandos instalam o apache
apt-get install apache2 -y

echo "Instalando o unzip."

# Os comandos instalam o unzip
apt-get install unzip -y


echo "Agora baixar e copiar os arquivo da aplicação..."

# Os comandos baixam e copiam a aplicação para o servidor
wget https://github.com/mrodrigochaves/odin-recipes/archive/refs/heads/main.zip
unzip main.zip
cd odin-recipes-main
cp -R * /var/www/html/

echo "Oba!!..Agora acesse seu site."