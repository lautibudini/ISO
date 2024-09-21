#!/bin/bash
if [ $# -ne 1 ];
then
  echo "Debe pasar un parametro"
  exit 1
fi
if [ -e $1 ] && [ -d $1 ]
then
  cantidad=0
  for i in $(ls $1)
  do
    if [ -f $i ]
    then
      if [ -r $i ] && [ -w $i ]
      then
        ((cantidad++))
      fi
    fi
  done
  echo  "La cantidad de archivos a la cual tiene permiso de lectura y escritura son : $cantidad"
else
  echo "No existe el directorio"
  exit 4
fi