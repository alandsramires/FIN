!#!/bin/bash

echo "Quantos usuarios pretende criar?"
read n

for ((i=1 ; i <= $n ; i++))do

echo "O nome do usuário:"
read user
echo "Digite uma senha"
read senha
echo; echo "O usuário é $user e a senha é $senha"
echo
useradd -m -d /home/$user -r -s /bin/bash $user
(echo $senha; echo $senha) | passwd $user
echo $user criado
sleep 1
done
