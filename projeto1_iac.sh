#!/bin/bash

echo "Início do processo."

echo "criando os diretórios."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados."

echo "Criando os grupos."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados."

echo "Criando os usuários e já incluindo nos respectivos grupos."
useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Usuários criados em seus respectivos grupos."

echo "Informando as permissões para os diretórios."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões informadas para cada diretório."

echo "Fim do processo."
