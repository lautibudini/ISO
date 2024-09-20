#!/bin/bash
if [ $# -ne 1 ] && [ $# -ne 2 ];
then
  echo "La cantidad de parametros es incorrecta"
  exit 1
fi

groupn=$( cat /etc/group | grep -w "users" | cut -d: -f4 | tr ","  " ")
usersn=($groupn)

case $1 in 
  -b) 
    #Retorna el elem de la posición n si existe , sino se informa en pantalla el error.
    long=$((${#usersn[*]} - 1))
    if [ $2 -ge 0 ] &&  [ $2 -le $long ]
    then
      echo "El elemento de la posición $2 es : ${usersn[$2]}"
    else
      echo "La posición esta fuera de rango"
      exit 2
    fi 
    ;;
  -l) 
    #Devuelve la long del arreglo : 
    echo "La longitud del arreglo es : ${#usersn[*]}" ;;
  -i) 
    #Imprime en pantalla todos los elementos del arreglo: 
    for elem in ${usersn[*]}
    do
      echo "Elemento en la posición $elem : ${usersn[$elem]}"
    done 
    ;;
   *) 
     echo "El parametro ingresado es incorrecto "  
     exit 3 
     ;; 
esac