#!/bin/bash
contador=0
dir="$HOME/bin"
if [ ! -d $dir ];
then
  echo "Se creo el directorio"
  mkdir $dir
fi
for i in $(ls);
do
  if [ -f $i  ] && [ -x $i ]
  then
    echo " Se mueve el archivo $i "
    mv  "$i" "$dir"
    ((contador++))
  fi
done
if [ $contador -eq 0 ];
then
  echo "No se ha movido ningun archivo"
else
  echo "Se movieron $contador archivos"
fi 