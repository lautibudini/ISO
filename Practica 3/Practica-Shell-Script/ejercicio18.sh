#!/bin/bash
if [ $# -ne 1 ];
then
  echo "La cantidad de parametros no es la indicada"
  exit 1
fi

usuario=$( cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l)
if [ $usuario -ne 1 ];
then
  echo "El usuario ingresado no existe"
  exit 2
fi

while true
do
  if [ $( users | grep -w $1 | wc -l ) -eq 1 ];
  then
    echo "El usuario $1 esta logueado en el sistema"
    exit 0
  fi
  # El numero que le pasemos lo toma como seg si no le pasamos un tercer parametro.
  sleep 10
done