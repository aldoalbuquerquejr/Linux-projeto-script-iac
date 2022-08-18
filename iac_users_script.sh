#!/bin/bash

echo "Criando diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários.."

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -c "Maria Silva" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -c "joao Silva" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -c "Débora Andrade" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Cavalcante" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -c "João Andrade" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina Mendes" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Rabelo" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério Trindade" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Configurando permissões aos diretórios.."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico

echo "Configurações realizadas com sucesso!"


