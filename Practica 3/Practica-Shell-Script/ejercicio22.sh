#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productoria(){
  local res=1
  #Recorro todos los elementos del arreglo
  for i in ${num[*]}
  do 
    res=$(($res*$i))
  done
  echo "El resultado de la multiplicación de todos los elementos del arreglo es: $res "
}

productoria