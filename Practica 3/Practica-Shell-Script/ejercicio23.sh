#!/bin/bash
numeros=(1 2 3 4 5 6 7 8 9 10)

paresyimpares(){
  local impares=0
  for i in ${numeros[*]}
  do
    if (($i %  2 == 0))
    then
      echo "$i es par"
    else
      impares=$(($impares + 1))
    fi
  done
  echo "La cantidad de numeros impares es : $impares"
}

paresyimpares