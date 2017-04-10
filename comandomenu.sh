#!/bin/bash -x

clear
valor=10

while [ $valor != "0" ]; do
echo "O que voçê deseja fazer?"
echo "[0]Sair"
echo "[1]Criar pastas"
echo "[2]Criar usuários"
echo "[3]Excluir pastas"
echo “[4]Permissão de usuários”

read valor


if [ $valor -eq "1" ]
then
echo "Digite o caminho onde deseja criar:"
read endereco
cd /
cd $endereco
echo "Digite um nome para a pasta:"
read nomepasta
mkdir $nomepasta
chmod 777 $nomepasta
echo "Pasta criada com sucesso!"

elif [ $valor -eq "2" ]
then
echo "Digite um nome para o usuário:"
read nomeusuario
adduser $nomeusuario
echo "Usuário criado com sucesso!"

elif [ $valor -eq "3" ]
then
echo "Digite o caminho onde a pasta se encontra:"
read caminho
cd /
cd $caminho
echo "Digite o nome da pasta:"
read nomedapasta
rmdir $nomedapasta
echo "Pasta excluida com sucesso!"

elif [ $valor -eq "4" ]
then
echo “Qual permissão vc quer rodar?”
read comandodepermissao
echo “para qual destino?”
read destino
$comandodepermissão $destino

fi
done

