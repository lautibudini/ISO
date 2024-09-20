#!/bin/bash

inicializar(){
  #Crea un array vacio
  array=()
  echo "Se creo el arreglo"
}

agregar_elem(){
  #Agrega el elemento pasado como parametro al arreglo
  if [ $# -ne 1 ];
  then
    echo "Solo se debe pasar un parametro"
  else
    array+=($1)
  fi
}

eliminar_elem(){
  #Elimina del arreglo la posición recibida. Verificar que exista.
  local long=${#array[*]}
  if [ $# -ne 1 ];
  then
    echo "Solo se debe pasar un parametro"
  else
    if [ $1 -ge 0 ] && [ $1 -lt $long ]
    then
      unset array[$1]
    else
      echo "La posición no es valida"
    fi
  fi
}

longitud(){
  #Imprime la longitud del arreglo
  echo "La longitud del arreglo es de : ${#array[*]}"
}

imprimir(){
  #Imprime todos los elementos del arreglo en pantalla
  for i in ${array[*]}
  do
    echo $i
  done
}

inicializar_con_valores(){
  #Crea un vector con una longitud de p1 y en todas sus posiciones hay p2.
  if [ $# -ne 2 ];
  then
    echo "Solo se debe pasar dos parametros"
  else
    array2=()
    for ((i=0;i<$1;i++))
    do
      array2[$i]=$2
    done
    echo " Arreglo resultante : ${array2[*]}"
  fi
}



#Pruebas

inicializar
imprimir
agregar_elem uno
agregar_elem dos
agregar_elem tres
imprimir
eliminar_elem 1
imprimir
longitud
inicializar_con_valores 3 dos