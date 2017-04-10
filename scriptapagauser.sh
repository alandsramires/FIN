#!/bin/bash -x
echo "Quantos usuários você pretende apagar?"
read n

for ((i=1 ; i <= $n ; i++)) do

echo "Digite o nome de usuário a ser removido"
read user

echo "O usuário é $user"

sleep 2

userdel -r $user
echo "$user removido"
speel 2 
done
