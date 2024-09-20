#!/bin/bash
vec1=(1 80 65 35 2)
vec2=(5 98 3 41 8)

suma(){
  local long=${#vec1[*]}
  for ((i = 0; i< long; i++))
  do
    echo "La suma de los elementos de la posición $i de los vectores es : $((${vec1[$i]} + ${vec2[$i]}))"
  done
}

suma 