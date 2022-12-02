#!/bin/bash 

echo “ Criando os Diretórios…..”

mkdir /publica

mkdir /adm

mkdir /ven

mkdir /sec 

echo “ Criando os grupos de usuários ….”

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo “ Criando os usuários e definindo os grupos …”

#o parametro -crypt foi descontinuado não necessitando mais;
#por padrão é substituido por -1 que refere-se ao MD5;
useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
#Senha expira e pede para criar uma nova;
passwd carlos -e

useradd maria -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd debora -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo “ Definindo permissões de diretórios…..”

#O root será o dono de todos os diretórios

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

#root terá acesso a todos os diterórios e cada grupo ao seu respectivo diretório;

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec

#todos terão livre acesso a pública

chmod 777 /publica

echo “ Finalizando configurações……”
