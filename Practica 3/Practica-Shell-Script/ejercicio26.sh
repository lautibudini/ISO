#!/bin/bash
if [ $# -eq 0 ]
then
  echo "Debe al menos pasar como parametro una ruta absoluta"
  exit 1
fi
rutas=($@)

iterar(){
  local inexistente=0
  for ((i=0; i<${#rutas[*]};i++))
  do
    if ! [ -e ${rutas[$i]} ] #Si no existe la ruta : 
    then
      ((inexistente++))
    else
      if  (($i +1 % 2 != 0 )); #Le sumo uno ya que el array arranca de cero y cuento por num de parametro
      then
        if [ -f ${rutas[$i]} ];
        then
          echo "El parametro $(($i + 1)) es un archivo"
        elif [ -d ${rutas[$i]} ];
          then
            echo "El parametro $(($i + 1)) es un directorio"
        else
          echo "El parametro $(($i + 1)) no es de tipo archivo ni directorio"
        fi
      fi
    fi
  done 
  
  echo "la cantidad de archivos/directorios inexistentes son : $inexistente"
}

iterar