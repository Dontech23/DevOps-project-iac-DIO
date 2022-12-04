#!/bin/bash

#Scrip de Provisionamento de um Servidor Web

echo “Realizando as primeiras configurações do Servidor”

echo “Atualizando o Servidor….”

apt-get update -y

apt-get upgrade -y

echo “Instalando o apache e o unzip…”

apt-get install apache2 -y

apt-get install unzip -y

echo “Inserindo o site do github no diretório tmp...”

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Aqui vai ser baixado um arquivo zip com o nome main.zip com todos os arquivos do site

#Agora vamos abrir o zip, e depois necessário entrar no diretório que terá o nome de linux-site-dio-main
#e copiar todos os arquivos para pasta do apache localizada no /var/www/html/

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo "instalando o mysql server 8.0...”

apt-get install mysql-server-8.0
